#include "llvm/Transforms/ObfuscationLeo/StringStitution.h"

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
    struct StringStitution : public FunctionPass {
        static char ID; // Pass identification, replacement for typeid
        bool flag;

        StringStitution() : FunctionPass(ID) {}

        StringStitution(bool flg) : FunctionPass(ID) {
            this->flag = flg;
        }

        bool runOnFunction(Function &F) override {
            errs() << "Hello: ";
            errs().write_escaped(F.getName()) << "strob" << '\n';
            return false;
        }
    };
}

char StringStitution::ID = 0;
static RegisterPass<StringStitution> X("strsti", "String Obfuscator Pass"); //X方法用于注册opt识别的参数

//Y方法用于注册clang识别
//static RegisterStandardPasses Y(
//        PassManagerBuilder::EP_EarlyAsPossible,
//        [](const PassManagerBuilder &Builder,
//           legacy::PassManagerBase &PM) { PM.add(new Hello3()); });

FunctionPass *llvm::createStringStitution() {return new StringStitution();}
FunctionPass *llvm::createStringStitution(bool flag) {return new StringStitution(flag);}
