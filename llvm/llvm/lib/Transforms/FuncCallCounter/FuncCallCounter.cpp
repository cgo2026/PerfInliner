#include "llvm/Transforms/FuncCallCounter/FuncCallCounter.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"

using namespace llvm;

llvm::PreservedAnalyses FuncCallCounterPass::run(Module &M, ModuleAnalysisManager &MAM) {
    LLVMContext &Context = M.getContext();

    // Get or insert the printf function declaration
    FunctionCallee PrintfFunc = M.getOrInsertFunction(
        "printf", FunctionType::get(IntegerType::getInt32Ty(Context),
                                    PointerType::get(Type::getInt8Ty(Context), 0),
                                    true));

    for (Function &F : M) {
        if (F.isDeclaration() || F.getName() == "mainGtU" || F.getName() == "BZ2_blockSort") continue;

        // Create a format string for the function name
        std::string formatStr = "call function:" + F.getName().str() + "\n";
        Constant *FormatConst = ConstantDataArray::getString(Context, formatStr);
        GlobalVariable *FormatStrVar = new GlobalVariable(M, FormatConst->getType(), true,
                                                            GlobalValue::PrivateLinkage, FormatConst,
                                                            ".str");

        // Insert the printf call at the function entry
        IRBuilder<> Builder(&*F.getEntryBlock().getFirstInsertionPt());
        Value *FormatStrPtr = Builder.CreatePointerCast(FormatStrVar, PointerType::get(Type::getInt8Ty(Context), 0));
        Builder.CreateCall(PrintfFunc, {FormatStrPtr});
    }
    return PreservedAnalyses::all();
}