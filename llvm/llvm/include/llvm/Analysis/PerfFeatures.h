#ifndef LLVM_ANALYSIS_PERFFEATURES_H
#define LLVM_ANALYSIS_PERFFEATURES_H

#include "llvm/IR/PassManager.h"
#include "llvm/Analysis/CallGraph.h"
#include <unordered_set>


namespace llvm {
    class PerfFeaturesAnalysis : public llvm::PassInfoMixin<PerfFeaturesAnalysis>{
    public:
        // int computeFunctionHeight(CallGraph &CG, const Function *F, std::unordered_map<const Function *,int> &FunctionHeight, std::unordered_set<const Function *> &Visited);
        PreservedAnalyses run(Module &M, ModuleAnalysisManager &AM);
    private:
        int computeFunctionHeight(CallGraph &CG, const Function *F, std::unordered_map<const Function *,int> &FunctionHeight, std::unordered_set<const Function *> &Visited);
    };

}  // namespace llvm

#endif  // LLVM_ANALYSIS_PERFFEATURES_H