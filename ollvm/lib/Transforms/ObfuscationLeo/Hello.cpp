//===- Hello.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements two versions of the LLVM "Hello World" pass described
// in docs/WritingAnLLVMPass.html
//
//===----------------------------------------------------------------------===//

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"


#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"

#include "llvm/Transforms/ObfuscationLeo/Hello.h"

using namespace llvm;

#define DEBUG_TYPE "hello"

STATISTIC(HelloCounter, "Counts number of functions greeted");

namespace {
  // Hello - The first implementation, without getAnalysisUsage.
  struct Hello : public FunctionPass {
    static char ID; // Pass identification, replacement for typeid
    Hello() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      ++HelloCounter;
      errs() << "Hello: ";
      errs().write_escaped(F.getName()) << '\n';
      return false;
    }
  };
}

char Hello::ID = 0;
static RegisterPass<Hello> X("hello", "Hello World Pass");

namespace {
  // Hello2 - The second implementation with getAnalysisUsage implemented.
  struct Hello3 : public FunctionPass {
      bool flg;
    static char ID; // Pass identification, replacement for typeid
    Hello3() : FunctionPass(ID) {}

    Hello3(bool flg) : FunctionPass(ID) {
        if (!flg) {
            errs() << "is off!" << "\n";
        }else {
            errs() << "is on!" << "\n";
        }
        this->flg = flg;
    }

    bool runOnFunction(Function &F) override {
      ++HelloCounter;
      errs() << "Hello: ";
      errs().write_escaped(F.getName()) << '\n';
      return false;
    }

    // We don't modify the program, so we preserve all analyses.
    void getAnalysisUsage(AnalysisUsage &AU) const override {
      AU.setPreservesAll();
    }
  };
}

char Hello3::ID = 0;

FunctionPass *llvm::createHelloPass() {return new Hello3();}
FunctionPass *llvm::createHelloPass(bool flag) {
    return new Hello3(flag);
}

//Y("hello3", "Hello World Pass (with getAnalysisUsage implemented)");

//static RegisterStandardPasses Y(
//        PassManagerBuilder::EP_EarlyAsPossible,
//        [](const PassManagerBuilder &Builder,
//           legacy::PassManagerBase &PM) { PM.add(new Hello3()); });
