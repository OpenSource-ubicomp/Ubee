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
include samples/CMakeFiles/tea_test.dir/depend.make

# Include the progress variables for this target.
include samples/CMakeFiles/tea_test.dir/progress.make

# Include the compile flags for this target's objects.
include samples/CMakeFiles/tea_test.dir/flags.make

samples/CMakeFiles/tea_test.dir/tea_test.cpp.o: samples/CMakeFiles/tea_test.dir/flags.make
samples/CMakeFiles/tea_test.dir/tea_test.cpp.o: ../samples/tea_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object samples/CMakeFiles/tea_test.dir/tea_test.cpp.o"
	cd /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tea_test.dir/tea_test.cpp.o -c /home/sion/ros_ws/src/Ubee/YDLidar-SDK/samples/tea_test.cpp

samples/CMakeFiles/tea_test.dir/tea_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tea_test.dir/tea_test.cpp.i"
	cd /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sion/ros_ws/src/Ubee/YDLidar-SDK/samples/tea_test.cpp > CMakeFiles/tea_test.dir/tea_test.cpp.i

samples/CMakeFiles/tea_test.dir/tea_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tea_test.dir/tea_test.cpp.s"
	cd /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sion/ros_ws/src/Ubee/YDLidar-SDK/samples/tea_test.cpp -o CMakeFiles/tea_test.dir/tea_test.cpp.s

# Object files for target tea_test
tea_test_OBJECTS = \
"CMakeFiles/tea_test.dir/tea_test.cpp.o"

# External object files for target tea_test
tea_test_EXTERNAL_OBJECTS =

tea_test: samples/CMakeFiles/tea_test.dir/tea_test.cpp.o
tea_test: samples/CMakeFiles/tea_test.dir/build.make
tea_test: libydlidar_sdk.a
tea_test: samples/CMakeFiles/tea_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../tea_test"
	cd /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tea_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
samples/CMakeFiles/tea_test.dir/build: tea_test

.PHONY : samples/CMakeFiles/tea_test.dir/build

samples/CMakeFiles/tea_test.dir/clean:
	cd /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples && $(CMAKE_COMMAND) -P CMakeFiles/tea_test.dir/cmake_clean.cmake
.PHONY : samples/CMakeFiles/tea_test.dir/clean

samples/CMakeFiles/tea_test.dir/depend:
	cd /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sion/ros_ws/src/Ubee/YDLidar-SDK /home/sion/ros_ws/src/Ubee/YDLidar-SDK/samples /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples /home/sion/ros_ws/src/Ubee/YDLidar-SDK/build/samples/CMakeFiles/tea_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : samples/CMakeFiles/tea_test.dir/depend

