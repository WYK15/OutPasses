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

# Utility rule file for install-LLVMEntry-stripped.

# Include the progress variables for this target.
include ollvm/tools/CMakeFiles/install-LLVMEntry-stripped.dir/progress.make

ollvm/tools/CMakeFiles/install-LLVMEntry-stripped:
	cd /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/tools && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -DCMAKE_INSTALL_COMPONENT="LLVMEntry" -DCMAKE_INSTALL_DO_STRIP=1 -P /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/cmake_install.cmake

install-LLVMEntry-stripped: ollvm/tools/CMakeFiles/install-LLVMEntry-stripped
install-LLVMEntry-stripped: ollvm/tools/CMakeFiles/install-LLVMEntry-stripped.dir/build.make

.PHONY : install-LLVMEntry-stripped

# Rule to build all files generated by this target.
ollvm/tools/CMakeFiles/install-LLVMEntry-stripped.dir/build: install-LLVMEntry-stripped

.PHONY : ollvm/tools/CMakeFiles/install-LLVMEntry-stripped.dir/build

ollvm/tools/CMakeFiles/install-LLVMEntry-stripped.dir/clean:
	cd /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/tools && $(CMAKE_COMMAND) -P CMakeFiles/install-LLVMEntry-stripped.dir/cmake_clean.cmake
.PHONY : ollvm/tools/CMakeFiles/install-LLVMEntry-stripped.dir/clean

ollvm/tools/CMakeFiles/install-LLVMEntry-stripped.dir/depend:
	cd /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/wangyankun/Documents/onebyone/outPass/myPass /Users/wangyankun/Documents/onebyone/outPass/myPass/ollvm/tools /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/tools /Users/wangyankun/Documents/onebyone/outPass/myPass/cmake-build-debug/ollvm/tools/CMakeFiles/install-LLVMEntry-stripped.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ollvm/tools/CMakeFiles/install-LLVMEntry-stripped.dir/depend
