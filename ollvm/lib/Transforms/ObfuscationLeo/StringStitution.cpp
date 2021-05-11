/*
 * opt调试参数：
 * opt -load=/Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/lib/Transforms/ObfuscationLeo/libLLVMObfuscationLeo.dylib -strsti   /Users/wangyankun/Documents/onebyone/deollvm/test.ll -o /Users/wangyankun/Documents/onebyone/deollvm/test2.ll
 * opt针对.bc/.ll文件，没有正确打印出
 *
 *
 * clang调试参数：
 *clang -Xclang -load -Xclang /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/lib/Transforms/ObfuscationLeo/libLLVMObfuscationLeo.dylib    /Users/wangyankun/Documents/onebyone/deollvm/test.c  -emit-llvm -S -o /Users/wangyankun/Documents/onebyone/deollvm/test.ll -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
 * clang这种方式使用 for (GlobalVariable &GV : M.globals()) 方法时，crash
 *
 */

#include "llvm/Transforms/ObfuscationLeo/StringStitution.h"

#include "llvm/Transforms/Utils/GlobalStatus.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/GlobalValue.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/CryptoUtils.h"
#include "llvm/Pass.h"

#include <map>
#include <set>
#include <iostream>
#include <algorithm>




using namespace llvm;

namespace {
    struct StringStitution : public ModulePass {
        static char ID; // Pass identification, replacement for typeid
        bool flag;

        StringStitution() : ModulePass(ID) {
            this->flag = true;
        }

        StringStitution(bool flg) : ModulePass(ID) {
            this->flag = flg;
        }

        bool runOnModule(Module &M) override {

            LLVMContext &Ctx = M.getContext();
            IRBuilder<> IRB(Ctx);


            for (GlobalVariable &GV : M.globals()) {
                if (!GV.isConstant() || !GV.hasInitializer()) {
                    continue;
                }
                Constant *Init = GV.getInitializer();
                if (Init == nullptr)
                    continue;

                if (ConstantDataSequential *CDS = dyn_cast<ConstantDataSequential>(Init)) {
                    errs() << CDS->getRawDataValues() << "\n";
                }

            }
        }

//        bool runOnFunction(Function &F) override {
//            //errs() << "Hello: ";
//            for (BasicBlock &BB : F) {
//                errs() << "bb name : " << BB.getName() << ": \n";
//                //遍历BB中每条instruction
//                for (Instruction &inst : BB) {
//                    //errs() << inst << "\n";
//                    for (Value *op : inst.operands()) {
//                        errs() << "aaa";
//                    }
//                }
//                errs() << "\n";
//            }
//            return false;
//        }
    };
}


//bool StringStitution::runOnModule(Module &M) {
//    Module::global_iterator I = M.global_begin(), E = M.global_end();
//    while ( I != E) {
//        errs() << "aaa";
//        break;
//        //I++;
//    }
//
//}

char StringStitution::ID = 0;
static RegisterPass<StringStitution> X("strsti", "String Obfuscator Pass"); //X方法用于注册opt识别的参数

//Y方法用于注册clang识别
//static RegisterStandardPasses Y(
//        PassManagerBuilder::EP_EarlyAsPossible,
//        [](const PassManagerBuilder &Builder,
//           legacy::PassManagerBase &PM) { PM.add(new Hello3()); });

ModulePass *llvm::createStringStitution() {return new StringStitution();}
ModulePass *llvm::createStringStitution(bool flag) {return new StringStitution(flag);}
