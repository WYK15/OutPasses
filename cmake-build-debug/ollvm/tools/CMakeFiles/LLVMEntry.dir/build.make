# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/wangyankun/Documents/onebyone/outPass/myPass

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug

# Include any dependencies generated for this target.
include ollvm/tools/CMakeFiles/LLVMEntry.dir/depend.make

# Include the progress variables for this target.
include ollvm/tools/CMakeFiles/LLVMEntry.dir/progress.make

# Include the compile flags for this target's objects.
include ollvm/tools/CMakeFiles/LLVMEntry.dir/flags.make

ollvm/tools/CMakeFiles/LLVMEntry.dir/Entry.cpp.o: ollvm/tools/CMakeFiles/LLVMEntry.dir/flags.make
ollvm/tools/CMakeFiles/LLVMEntry.dir/Entry.cpp.o: ../ollvm/tools/Entry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ollvm/tools/CMakeFiles/LLVMEntry.dir/Entry.cpp.o"
	cd /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/tools && /Applications/Xcode-11.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMEntry.dir/Entry.cpp.o -c /Users/wangyankun/Documents/onebyone/outPass/myPass/ollvm/tools/Entry.cpp

ollvm/tools/CMakeFiles/LLVMEntry.dir/Entry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMEntry.dir/Entry.cpp.i"
	cd /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/tools && /Applications/Xcode-11.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/wangyankun/Documents/onebyone/outPass/myPass/ollvm/tools/Entry.cpp > CMakeFiles/LLVMEntry.dir/Entry.cpp.i

ollvm/tools/CMakeFiles/LLVMEntry.dir/Entry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMEntry.dir/Entry.cpp.s"
	cd /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/tools && /Applications/Xcode-11.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/wangyankun/Documents/onebyone/outPass/myPass/ollvm/tools/Entry.cpp -o CMakeFiles/LLVMEntry.dir/Entry.cpp.s

# Object files for target LLVMEntry
LLVMEntry_OBJECTS = \
"CMakeFiles/LLVMEntry.dir/Entry.cpp.o"

# External object files for target LLVMEntry
LLVMEntry_EXTERNAL_OBJECTS =

ollvm/tools/libLLVMEntry.a: ollvm/tools/CMakeFiles/LLVMEntry.dir/Entry.cpp.o
ollvm/tools/libLLVMEntry.a: ollvm/tools/CMakeFiles/LLVMEntry.dir/build.make
ollvm/tools/libLLVMEntry.a: ollvm/tools/CMakeFiles/LLVMEntry.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libLLVMEntry.a"
	cd /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/tools && $(CMAKE_COMMAND) -P CMakeFiles/LLVMEntry.dir/cmake_clean_target.cmake
	cd /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMEntry.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ollvm/tools/CMakeFiles/LLVMEntry.dir/build: ollvm/tools/libLLVMEntry.a

.PHONY : ollvm/tools/CMakeFiles/LLVMEntry.dir/build

ollvm/tools/CMakeFiles/LLVMEntry.dir/clean:
	cd /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/tools && $(CMAKE_COMMAND) -P CMakeFiles/LLVMEntry.dir/cmake_clean.cmake
.PHONY : ollvm/tools/CMakeFiles/LLVMEntry.dir/clean

ollvm/tools/CMakeFiles/LLVMEntry.dir/depend:
	cd /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wangyankun/Documents/onebyone/outPass/myPass /Users/wangyankun/Documents/onebyone/outPass/myPass/ollvm/tools /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/tools /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/tools/CMakeFiles/LLVMEntry.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ollvm/tools/CMakeFiles/LLVMEntry.dir/depend

