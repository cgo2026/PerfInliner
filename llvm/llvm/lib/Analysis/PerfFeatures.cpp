#include "llvm/Analysis/PerfFeatures.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/CFG.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/CallGraph.h"
#include "llvm/Analysis/BlockFrequencyInfo.h"
#include "llvm/IR/Dominators.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/InstIterator.h"

#include <fstream>  

using namespace llvm;

#define DEBUG_TYPE "perf-features"

static cl::opt<std::string> featuresFile(
    "features-file", cl::init(""), cl::value_desc("featuresFile"),
    cl::desc(
        "record function features "),
    cl::Hidden);


PreservedAnalyses PerfFeaturesAnalysis::run(Module &M, ModuleAnalysisManager &AM){
    // for(auto &F : M.functions()){
    //     errs() << F.getName() << " \n";
    // }

    std::ofstream csvFile(featuresFile, std::ios::app);
    if(!csvFile.is_open()){
        errs() << "Error opening file\n";
        return PreservedAnalyses::all();
    }

    // 写入CSV文件的表头
    csvFile << "Function Name,NumInst,NumBlock,NumSuccBlock,NumLoop,TotalNestedLoopLevel,"
                "NumInstOfLoop,BlockWithMultipleSucc,CallsNo,IsLocal,MaxLoopDepth,"
                "MaxDomTreeLevel,CallerHeight,IsRecursive,NumCallsiteOfLoop,EntryBlockFreq,"
                "MaxCallSiteBlockFreq,NumRet,NumFmul,NumFdiv,NumFadd,NumFsub\n";
    
    auto &FAM = AM.getResult<FunctionAnalysisManagerModuleProxy>(M).getManager();
    auto &CG = AM.getResult<CallGraphAnalysis>(M);

    // // Iterate over all nodes in the call graph
    // for (auto &Node : CG) {
    //     // Get the function for the current node
    //     Function *F = Node.second->getFunction();
    //     if (F) {
    //         // Print the function name
    //         errs() << "Function: " << F->getName() << "\n";
            
    //         // Iterate over all call records for the current function
    //         for (auto &CallRecord : *Node.second) {
    //             if (CallRecord.second) {
    //                 // Get the callee function
    //                 Function *Callee = CallRecord.second->getFunction();
    //                 if (Callee) {
    //                     // Print the callee function name
    //                     errs() << "  calls: " << Callee->getName() << "\n";
    //                 }
    //             }
    //         }
    //     }
    // }


    // errs() << "------------------ " << "\n";

    std::unordered_map<const Function *, int> FunctionHeights;
    std::unordered_set<const Function *> Visited;
    for(auto &F : M.functions()){
        if(!F.isDeclaration()){
            // errs() << F.getName() << "\n";
            int height = computeFunctionHeight(CG, &F, FunctionHeights, Visited);
            // errs() << F.getName() << ": " << height << "\n";
            FunctionHeights[&F] = height;
        }
    }

    for(auto &F : M.functions()){
        // 跳过系统函数或外部调用函数
        if(F.isDeclaration()){
            continue;
        }

        // 特征统计变量
        unsigned numInst = 0;
        unsigned numBlock = 0;
        unsigned numSuccBlock = 0;
        unsigned numLoop = 0;
        unsigned totalNestedLoopLevel = 0;
        unsigned numInstOfLoop = 0;
        unsigned blockWithMultipleSucc = 0;
        unsigned blockWithMultipleSuccPerLoop;
        unsigned callsNo = 0;
        unsigned isLocal = F.hasLocalLinkage() ? 1 : 0;
        unsigned MaxLoopDepth = 0;
        unsigned MaxDomTreeLevel = 0;
        unsigned callerHeight;
        unsigned callUsage; 
        unsigned isRecursive = 0;
        unsigned numCallsiteOfLoop = 0;
        unsigned entryBlockFreq = 0;
        unsigned MaxCallSiteBlockFreq = 0;
        unsigned numRet = 0;
        unsigned numFmul = 0;
        unsigned numFdiv = 0;
        unsigned numFadd = 0;
        unsigned numFsub = 0;


        auto &LI = FAM.getResult<LoopAnalysis>(F);
        auto &BFI = FAM.getResult<BlockFrequencyAnalysis>(F);
        auto &DT = FAM.getResult<DominatorTreeAnalysis>(F);

        entryBlockFreq = BFI.getBlockFreq(&F.getEntryBlock()).getFrequency();


        callerHeight = FunctionHeights[&F];

        for(auto &BB : F){
            numBlock++;
            numSuccBlock += succ_size(&BB);
            numInst += BB.size();

            MaxDomTreeLevel = std::max(MaxDomTreeLevel, DT.getNode(&BB)->getLevel());
            unsigned blockFreq = BFI.getBlockFreq(&BB).getFrequency();

            for(auto &I : BB){
                if(auto *call = dyn_cast<CallInst>(&I)){
                    callsNo++;
                    if(call->getCalledFunction() == &F){
                        isRecursive = 1;
                    }
                }
                if(isa<CallBase>(&I)) MaxCallSiteBlockFreq = std::max(MaxCallSiteBlockFreq, blockFreq);
                if(isa<ReturnInst>(I)) numRet++;
                if(isa<BinaryOperator>(I) && I.getOpcode() == Instruction::FMul) numFmul++;
                if(isa<BinaryOperator>(I) && I.getOpcode() == Instruction::FDiv) numFdiv++;
                if(isa<BinaryOperator>(I) && I.getOpcode() == Instruction::FAdd) numFadd++;
                if(isa<BinaryOperator>(I) && I.getOpcode() == Instruction::FSub) numFsub++;
            }
        }

        for(Loop *Loop : LI){
            numLoop++;
            MaxLoopDepth = std::max(MaxLoopDepth, Loop->getLoopDepth());
            totalNestedLoopLevel += Loop->getLoopDepth();
            for(BasicBlock *BB : Loop->blocks()){
                numInstOfLoop += BB->size();
                if(succ_size(BB) > 1){
                    blockWithMultipleSucc++;
                }

                for(auto &I : *BB){
                    if(isa<CallInst>(I)){
                        numCallsiteOfLoop++;
                    }
                }
            }
        }

    //    errs() << "Function name : " << F.getName() << "\n"
    //           << "AvgInstructionPerBlock:" << (numBlock ? numInst/numBlock : numBlock) << "\n"
    //           << "AvgSuccessorPerBlock :" << (numBlock ? numSuccBlock/numBlock : numSuccBlock) << "\n"
    //           << "AvgNestedLoopLevel :" << (numLoop ? totalNestedLoopLevel/numLoop : totalNestedLoopLevel) << "\n"
    //           << "AvgInstrPerLoop:" << (numLoop ? numInstOfLoop/numLoop : numInstOfLoop) << "\n"
    //           << "AvgBlockWithMultipleSuccecorsPerLoop :" << (numLoop ? blockWithMultipleSucc/numLoop : blockWithMultipleSucc) << "\n"
    //           << "callsNo :" << callsNo  << "\n"
    //           << "isLocal :" << isLocal  << "\n"
    //           << "MaxLoopDepth :" << MaxLoopDepth  << "\n"
    //           << "MaxDomTreeLevel :" << MaxDomTreeLevel  << "\n"
    //           << "callerHeight:" << callerHeight << "\n"
    //           << "isRecursive :" << isRecursive  << "\n"
    //           << "AvgNumCallsiteInLoop :" << (numLoop ? numCallsiteOfLoop/numLoop : numCallsiteOfLoop) << "\n"
    //           << "entryBlockFreq:" << entryBlockFreq << "\n"
    //           << "MaxCallSiteBlockFreq:" << MaxCallSiteBlockFreq << "\n"
    //           << "numRet :" << numRet  << "\n"
    //           << "numFmul :" << numFmul  << "\n"
    //           << "numFdiv:" << numFdiv << "\n"
    //           << "numFadd :" << numFadd  << "\n"
    //           << "numFsub  :" << numFsub   << "\n"
    //           << "\n";

        // 写入CSV文件
        csvFile << F.getName().str() << ","
                << numInst << ","
                << numBlock << ","
                << numSuccBlock << ","
                << numLoop << ","
                << totalNestedLoopLevel << ","
                << numInstOfLoop << ","
                << blockWithMultipleSucc << ","
                << callsNo << ","
                << isLocal << ","
                << MaxLoopDepth << ","
                << MaxDomTreeLevel << ","
                << callerHeight << ","
                << isRecursive << ","
                << numCallsiteOfLoop << ","
                << entryBlockFreq << ","
                << MaxCallSiteBlockFreq << ","
                << numRet << ","
                << numFmul << ","
                << numFdiv << ","
                << numFadd << ","
                << numFsub << "\n";

    }

    // 关闭CSV文件
    csvFile.close();

    return PreservedAnalyses::all();
}


int PerfFeaturesAnalysis::computeFunctionHeight(CallGraph &CG, const Function *F, std::unordered_map<const Function *,int> &FunctionHeight, std::unordered_set<const Function *> &Visited){
    if(FunctionHeight.find(F) != FunctionHeight.end()){
        return FunctionHeight[F];
    }

    if(Visited.find(F) != Visited.end()){
        return 0;
    }

    auto *Node = CG[F];
    if(!Node){
        return 0;
    }

    Visited.insert(F);

    int height = 0;
    for(auto CallRecord : *Node){
        auto *CalleeNode = CallRecord.second;
        if(auto *CalleeFunction = CalleeNode->getFunction()){
            // if(CalleeFunction == F){
            //     continue;
            // }
            // errs() << "  calls: " << CalleeFunction->getName() << "\n";
            if(!CalleeFunction->isDeclaration()){
                height = std::max(height, (computeFunctionHeight(CG, CalleeFunction, FunctionHeight, Visited) + 1));
            }
        }
    }
    FunctionHeight[F] = height;
    return height;
}

// // 注册 Pass 的函数
// void registerPerfFeaturesAnalysisPass(PassBuilder &PB) {
//     PB.registerPipelineParsingCallback(
//         [](StringRef Name, ModulePassManager &MPM,
//            ArrayRef<PassBuilder::PipelineElement>) {
//             if (Name == "perffeatures") {
//                 MPM.addPass(PerfFeaturesAnalysis());
//                 return true;
//             }
//             return false;
//         }
//     );
// }

// // 为静态链接提供的函数
// extern "C" PassPluginLibraryInfo getPerfFeaturesAnalysisPluginInfo() {
//     return {LLVM_PLUGIN_API_VERSION, "PerfFeaturesAnalysis", LLVM_VERSION_STRING, registerPerfFeaturesAnalysisPass};
// }

// // 为动态链接提供的函数
// extern "C" PassPluginLibraryInfo llvmGetPassPluginInfo() {
//     return getPerfFeaturesAnalysisPluginInfo();
// }
