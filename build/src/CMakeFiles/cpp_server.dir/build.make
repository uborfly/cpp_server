# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /workspaces/boost_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspaces/boost_test/build

# Include any dependencies generated for this target.
include src/CMakeFiles/cpp_server.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/cpp_server.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/cpp_server.dir/flags.make

src/CMakeFiles/cpp_server.dir/main.cpp.o: src/CMakeFiles/cpp_server.dir/flags.make
src/CMakeFiles/cpp_server.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/workspaces/boost_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/cpp_server.dir/main.cpp.o"
	cd /workspaces/boost_test/build/src && g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp_server.dir/main.cpp.o -c /workspaces/boost_test/src/main.cpp

src/CMakeFiles/cpp_server.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp_server.dir/main.cpp.i"
	cd /workspaces/boost_test/build/src && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /workspaces/boost_test/src/main.cpp > CMakeFiles/cpp_server.dir/main.cpp.i

src/CMakeFiles/cpp_server.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp_server.dir/main.cpp.s"
	cd /workspaces/boost_test/build/src && g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /workspaces/boost_test/src/main.cpp -o CMakeFiles/cpp_server.dir/main.cpp.s

# Object files for target cpp_server
cpp_server_OBJECTS = \
"CMakeFiles/cpp_server.dir/main.cpp.o"

# External object files for target cpp_server
cpp_server_EXTERNAL_OBJECTS =

../bin/cpp_server: src/CMakeFiles/cpp_server.dir/main.cpp.o
../bin/cpp_server: src/CMakeFiles/cpp_server.dir/build.make
../bin/cpp_server: src/CMakeFiles/cpp_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspaces/boost_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/cpp_server"
	cd /workspaces/boost_test/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/cpp_server.dir/build: ../bin/cpp_server

.PHONY : src/CMakeFiles/cpp_server.dir/build

src/CMakeFiles/cpp_server.dir/clean:
	cd /workspaces/boost_test/build/src && $(CMAKE_COMMAND) -P CMakeFiles/cpp_server.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/cpp_server.dir/clean

src/CMakeFiles/cpp_server.dir/depend:
	cd /workspaces/boost_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspaces/boost_test /workspaces/boost_test/src /workspaces/boost_test/build /workspaces/boost_test/build/src /workspaces/boost_test/build/src/CMakeFiles/cpp_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/cpp_server.dir/depend

