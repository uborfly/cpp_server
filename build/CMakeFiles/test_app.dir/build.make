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
CMAKE_SOURCE_DIR = /root/cpp_server

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/cpp_server/build

# Include any dependencies generated for this target.
include CMakeFiles/test_app.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_app.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_app.dir/flags.make

CMakeFiles/test_app.dir/src/main.cpp.o: CMakeFiles/test_app.dir/flags.make
CMakeFiles/test_app.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cpp_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test_app.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_app.dir/src/main.cpp.o -c /root/cpp_server/src/main.cpp

CMakeFiles/test_app.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_app.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cpp_server/src/main.cpp > CMakeFiles/test_app.dir/src/main.cpp.i

CMakeFiles/test_app.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_app.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cpp_server/src/main.cpp -o CMakeFiles/test_app.dir/src/main.cpp.s

CMakeFiles/test_app.dir/src/http/server/connection.cpp.o: CMakeFiles/test_app.dir/flags.make
CMakeFiles/test_app.dir/src/http/server/connection.cpp.o: ../src/http/server/connection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cpp_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test_app.dir/src/http/server/connection.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_app.dir/src/http/server/connection.cpp.o -c /root/cpp_server/src/http/server/connection.cpp

CMakeFiles/test_app.dir/src/http/server/connection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_app.dir/src/http/server/connection.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cpp_server/src/http/server/connection.cpp > CMakeFiles/test_app.dir/src/http/server/connection.cpp.i

CMakeFiles/test_app.dir/src/http/server/connection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_app.dir/src/http/server/connection.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cpp_server/src/http/server/connection.cpp -o CMakeFiles/test_app.dir/src/http/server/connection.cpp.s

CMakeFiles/test_app.dir/src/http/server/io_context_pool.cpp.o: CMakeFiles/test_app.dir/flags.make
CMakeFiles/test_app.dir/src/http/server/io_context_pool.cpp.o: ../src/http/server/io_context_pool.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cpp_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/test_app.dir/src/http/server/io_context_pool.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_app.dir/src/http/server/io_context_pool.cpp.o -c /root/cpp_server/src/http/server/io_context_pool.cpp

CMakeFiles/test_app.dir/src/http/server/io_context_pool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_app.dir/src/http/server/io_context_pool.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cpp_server/src/http/server/io_context_pool.cpp > CMakeFiles/test_app.dir/src/http/server/io_context_pool.cpp.i

CMakeFiles/test_app.dir/src/http/server/io_context_pool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_app.dir/src/http/server/io_context_pool.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cpp_server/src/http/server/io_context_pool.cpp -o CMakeFiles/test_app.dir/src/http/server/io_context_pool.cpp.s

CMakeFiles/test_app.dir/src/http/server/mime_types.cpp.o: CMakeFiles/test_app.dir/flags.make
CMakeFiles/test_app.dir/src/http/server/mime_types.cpp.o: ../src/http/server/mime_types.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cpp_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/test_app.dir/src/http/server/mime_types.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_app.dir/src/http/server/mime_types.cpp.o -c /root/cpp_server/src/http/server/mime_types.cpp

CMakeFiles/test_app.dir/src/http/server/mime_types.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_app.dir/src/http/server/mime_types.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cpp_server/src/http/server/mime_types.cpp > CMakeFiles/test_app.dir/src/http/server/mime_types.cpp.i

CMakeFiles/test_app.dir/src/http/server/mime_types.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_app.dir/src/http/server/mime_types.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cpp_server/src/http/server/mime_types.cpp -o CMakeFiles/test_app.dir/src/http/server/mime_types.cpp.s

CMakeFiles/test_app.dir/src/http/server/reply.cpp.o: CMakeFiles/test_app.dir/flags.make
CMakeFiles/test_app.dir/src/http/server/reply.cpp.o: ../src/http/server/reply.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cpp_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/test_app.dir/src/http/server/reply.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_app.dir/src/http/server/reply.cpp.o -c /root/cpp_server/src/http/server/reply.cpp

CMakeFiles/test_app.dir/src/http/server/reply.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_app.dir/src/http/server/reply.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cpp_server/src/http/server/reply.cpp > CMakeFiles/test_app.dir/src/http/server/reply.cpp.i

CMakeFiles/test_app.dir/src/http/server/reply.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_app.dir/src/http/server/reply.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cpp_server/src/http/server/reply.cpp -o CMakeFiles/test_app.dir/src/http/server/reply.cpp.s

CMakeFiles/test_app.dir/src/http/server/request_handler.cpp.o: CMakeFiles/test_app.dir/flags.make
CMakeFiles/test_app.dir/src/http/server/request_handler.cpp.o: ../src/http/server/request_handler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cpp_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/test_app.dir/src/http/server/request_handler.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_app.dir/src/http/server/request_handler.cpp.o -c /root/cpp_server/src/http/server/request_handler.cpp

CMakeFiles/test_app.dir/src/http/server/request_handler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_app.dir/src/http/server/request_handler.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cpp_server/src/http/server/request_handler.cpp > CMakeFiles/test_app.dir/src/http/server/request_handler.cpp.i

CMakeFiles/test_app.dir/src/http/server/request_handler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_app.dir/src/http/server/request_handler.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cpp_server/src/http/server/request_handler.cpp -o CMakeFiles/test_app.dir/src/http/server/request_handler.cpp.s

CMakeFiles/test_app.dir/src/http/server/request_parser.cpp.o: CMakeFiles/test_app.dir/flags.make
CMakeFiles/test_app.dir/src/http/server/request_parser.cpp.o: ../src/http/server/request_parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cpp_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/test_app.dir/src/http/server/request_parser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_app.dir/src/http/server/request_parser.cpp.o -c /root/cpp_server/src/http/server/request_parser.cpp

CMakeFiles/test_app.dir/src/http/server/request_parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_app.dir/src/http/server/request_parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cpp_server/src/http/server/request_parser.cpp > CMakeFiles/test_app.dir/src/http/server/request_parser.cpp.i

CMakeFiles/test_app.dir/src/http/server/request_parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_app.dir/src/http/server/request_parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cpp_server/src/http/server/request_parser.cpp -o CMakeFiles/test_app.dir/src/http/server/request_parser.cpp.s

CMakeFiles/test_app.dir/src/http/server/server.cpp.o: CMakeFiles/test_app.dir/flags.make
CMakeFiles/test_app.dir/src/http/server/server.cpp.o: ../src/http/server/server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cpp_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/test_app.dir/src/http/server/server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_app.dir/src/http/server/server.cpp.o -c /root/cpp_server/src/http/server/server.cpp

CMakeFiles/test_app.dir/src/http/server/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_app.dir/src/http/server/server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cpp_server/src/http/server/server.cpp > CMakeFiles/test_app.dir/src/http/server/server.cpp.i

CMakeFiles/test_app.dir/src/http/server/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_app.dir/src/http/server/server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cpp_server/src/http/server/server.cpp -o CMakeFiles/test_app.dir/src/http/server/server.cpp.s

CMakeFiles/test_app.dir/src/http/data_handle.cpp.o: CMakeFiles/test_app.dir/flags.make
CMakeFiles/test_app.dir/src/http/data_handle.cpp.o: ../src/http/data_handle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/cpp_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/test_app.dir/src/http/data_handle.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_app.dir/src/http/data_handle.cpp.o -c /root/cpp_server/src/http/data_handle.cpp

CMakeFiles/test_app.dir/src/http/data_handle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_app.dir/src/http/data_handle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/cpp_server/src/http/data_handle.cpp > CMakeFiles/test_app.dir/src/http/data_handle.cpp.i

CMakeFiles/test_app.dir/src/http/data_handle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_app.dir/src/http/data_handle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/cpp_server/src/http/data_handle.cpp -o CMakeFiles/test_app.dir/src/http/data_handle.cpp.s

# Object files for target test_app
test_app_OBJECTS = \
"CMakeFiles/test_app.dir/src/main.cpp.o" \
"CMakeFiles/test_app.dir/src/http/server/connection.cpp.o" \
"CMakeFiles/test_app.dir/src/http/server/io_context_pool.cpp.o" \
"CMakeFiles/test_app.dir/src/http/server/mime_types.cpp.o" \
"CMakeFiles/test_app.dir/src/http/server/reply.cpp.o" \
"CMakeFiles/test_app.dir/src/http/server/request_handler.cpp.o" \
"CMakeFiles/test_app.dir/src/http/server/request_parser.cpp.o" \
"CMakeFiles/test_app.dir/src/http/server/server.cpp.o" \
"CMakeFiles/test_app.dir/src/http/data_handle.cpp.o"

# External object files for target test_app
test_app_EXTERNAL_OBJECTS =

../bin/test_app: CMakeFiles/test_app.dir/src/main.cpp.o
../bin/test_app: CMakeFiles/test_app.dir/src/http/server/connection.cpp.o
../bin/test_app: CMakeFiles/test_app.dir/src/http/server/io_context_pool.cpp.o
../bin/test_app: CMakeFiles/test_app.dir/src/http/server/mime_types.cpp.o
../bin/test_app: CMakeFiles/test_app.dir/src/http/server/reply.cpp.o
../bin/test_app: CMakeFiles/test_app.dir/src/http/server/request_handler.cpp.o
../bin/test_app: CMakeFiles/test_app.dir/src/http/server/request_parser.cpp.o
../bin/test_app: CMakeFiles/test_app.dir/src/http/server/server.cpp.o
../bin/test_app: CMakeFiles/test_app.dir/src/http/data_handle.cpp.o
../bin/test_app: CMakeFiles/test_app.dir/build.make
../bin/test_app: CMakeFiles/test_app.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/cpp_server/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable ../bin/test_app"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_app.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_app.dir/build: ../bin/test_app

.PHONY : CMakeFiles/test_app.dir/build

CMakeFiles/test_app.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_app.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_app.dir/clean

CMakeFiles/test_app.dir/depend:
	cd /root/cpp_server/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/cpp_server /root/cpp_server /root/cpp_server/build /root/cpp_server/build /root/cpp_server/build/CMakeFiles/test_app.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_app.dir/depend

