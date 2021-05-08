#ifndef _FLATTENING_INCLUDES_
#define _FLATTENING_INCLUDES_

namespace llvm {
    class FunctionPass;
    class IPObfuscationContext;
    struct ObfuscationOptions;
    FunctionPass *createHelloPass();
    FunctionPass *createHelloPass(bool flag);
    FunctionPass *createHelloPass(bool flag, IPObfuscationContext *IPO, ObfuscationOptions *Options);
}

#endif
