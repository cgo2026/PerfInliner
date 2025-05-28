#ifndef LLVM_TRANSFORMS_INSTRUMENTATION_FUNCCALLCOUNTER_H
#define LLVM_TRANSFORMS_INSTRUMENTATION_FUNCCALLCOUNTER_H

#include "llvm/IR/PassManager.h"

namespace llvm {
    class FuncCallCounterPass : public llvm::PassInfoMixin<FuncCallCounterPass> {
        public:
            llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &MAM);
    };

}

#endif