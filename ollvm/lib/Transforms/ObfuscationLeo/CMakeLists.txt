add_llvm_library( LLVMObfuscationLeo SHARED
        Hello.cpp
        StringStitution.cpp

        Entry.cpp

        )

# Allow undefined symbols in shared objects on Darwin (this is the default
# behaviour on Linux)
target_link_libraries(LLVMObfuscationLeo
        "$<$<PLATFORM_ID:Darwin>:-undefined dynamic_lookup>")


SET(CMAKE_CXX_FLAGS "-std=c++17 -Wall -fno-rtti -D__STDC_CONSTANT_MACROS -D__STDC_LIMIT_MACROS -fPIC")

INCLUDE_DIRECTORIES(../../../include)