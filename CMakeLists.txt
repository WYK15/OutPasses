project(myOutPass)
cmake_minimum_required(VERSION 3.16)

# On Darwin (unlike on Linux), undefined symbols in shared objects are not
# allowed at the end of the link-edit. The plugins defined here:
#  - _are_ shared objects
#  - reference symbols from LLVM shared libraries, i.e. symbols which are
#    undefined until those shared objects are loaded in memory (and hence
#    _undefined_ during static linking)
# The build will fail with errors like this:
#    "Undefined symbols for architecture x86_64"
# with various LLVM symbols being undefined. Since those symbols are later
# loaded and resolved at runtime, these errors are false positives.
# This behaviour can be modified via the '-undefined' OS X linker flag as
# follows.
set(CMAKE_SHARED_LINKER_FLAGS "-undefined dynamic_lookup")

set(LLVM_DIR /Users/wangyankun/Downloads/llvm-project-swift-release-5.4/ninja_build)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++14")
set(LLVM_LDFLAGS "$(shell llvm-config --libs --ldflags)")
set(CMAKE_SHARED_LINKER_FLAGS "-undefined dynamic_lookup")

find_package(LLVM REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

set (CMAKE_CXX_STANDARD 17)

list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
include(AddLLVM)

# LLVM is normally built without RTTI. Be consistent with that.
if(NOT LLVM_ENABLE_RTTI)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()

add_definitions(${LLVM_DEFINITIONS})
include_directories(${LLVM_INCLUDE_DIRS})

add_subdirectory(LeoObfuscator)
add_subdirectory(ollvm)
