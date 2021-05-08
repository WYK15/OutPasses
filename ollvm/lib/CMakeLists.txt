# `Demangle', `Support' and `TableGen' libraries are added on the top-level
# CMakeLists.txt
add_subdirectory(Transforms)

INCLUDE_DIRECTORIES(../../include)

include_directories(${LLVM_INCLUDE_DIRS})
