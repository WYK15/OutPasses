#ifndef OBFUSCATION_STRING_ENCRYPTION_H1
#define OBFUSCATION_STRING_ENCRYPTION_H1

namespace llvm {
    class ModulePass;
    class PassRegistry;
    class IPObfuscationContext;
    struct ObfuscationOptions;

    ModulePass *createStringStitution();
    ModulePass *createStringStitution(bool flag);
    ModulePass *createStringStitution(bool flag, IPObfuscationContext *IPO, ObfuscationOptions *Options);
}


#endif
