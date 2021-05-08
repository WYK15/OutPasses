#ifndef _FLATTENING_INCLUDES_
#define _FLATTENING_INCLUDES_

namespace llvm {
    class FunctionPass;
    class IPObfuscationContext;
    struct ObfuscationOptions;
    FunctionPass *createStringStitution();
    FunctionPass *createStringStitution(bool flag);
    FunctionPass *createStringStitution(bool flag, IPObfuscationContext *IPO, ObfuscationOptions *Options);
}


#endif
