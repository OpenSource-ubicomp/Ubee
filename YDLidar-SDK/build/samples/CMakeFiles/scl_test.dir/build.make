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
CMAKE_SOURCE_DIR = /home/sion/ros_ws/src/Ubee/YDLidar-SDK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build

# Include any dependencies generated for this target.
include samples/CMakeFiles/scl_test.dir/depend.make

# Include the progress variables for this target.
include samples/CMakeFiles/scl_test.dir/progress.make

# Include the compile flags for this target's objects.
include samples/CMakeFiles/scl_test.dir/flags.make

samples/CMakeFiles/scl_test.dir/scl_test.cpp.o: samples/CMakeFiles/scl_test.dir/flags.make
samples/CMakeFiles/scl_test.dir/scl_test.cpp.o: ../samples/scl_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/CMakeFiles/scl_test.dir/scl_test.cpp.o"
	cd /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/scl_test.dir/scl_test.cpp.o -c /home/sion/ros_ws/src/Ubee/YDLidar-SDK/samples/scl_test.cpp

samples/CMakeFiles/scl_test.dir/scl_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scl_test.dir/scl_test.cpp.i"
	cd /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sion/ros_ws/src/Ubee/YDLidar-SDK/samples/scl_test.cpp > CMakeFiles/scl_test.dir/scl_test.cpp.i

samples/CMakeFiles/scl_test.dir/scl_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scl_test.dir/scl_test.cpp.s"
	cd /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sion/ros_ws/src/Ubee/YDLidar-SDK/samples/scl_test.cpp -o CMakeFiles/scl_test.dir/scl_test.cpp.s

# Object files for target scl_test
scl_test_OBJECTS = \
"CMakeFiles/scl_test.dir/scl_test.cpp.o"

# External object files for target scl_test
scl_test_EXTERNAL_OBJECTS =

scl_test: samples/CMakeFiles/scl_test.dir/scl_test.cpp.o
scl_test: samples/CMakeFiles/scl_test.dir/build.make
scl_test: libydlidar_sdk.a
scl_test: samples/CMakeFiles/scl_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../scl_test"
	cd /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/scl_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/CMakeFiles/scl_test.dir/build: scl_test

.PHONY : samples/CMakeFiles/scl_test.dir/build

samples/CMakeFiles/scl_test.dir/clean:
	cd /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples && $(CMAKE_COMMAND) -P CMakeFiles/scl_test.dir/cmake_clean.cmake
.PHONY : samples/CMakeFiles/scl_test.dir/clean

samples/CMakeFiles/scl_test.dir/depend:
	cd /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sion/ros_ws/src/Ubee/YDLidar-SDK /home/sion/ros_ws/src/Ubee/YDLidar-SDK/samples /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples/CMakeFiles/scl_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/CMakeFiles/scl_test.dir/depend

