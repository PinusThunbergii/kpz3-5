# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/alex/c_cpp/kpz3_5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alex/c_cpp/kpz3_5/build/debug

# Include any dependencies generated for this target.
include CMakeFiles/application.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/application.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/application.dir/flags.make

CMakeFiles/application.dir/src/main.cpp.o: CMakeFiles/application.dir/flags.make
CMakeFiles/application.dir/src/main.cpp.o: ../../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alex/c_cpp/kpz3_5/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/application.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/application.dir/src/main.cpp.o -c /home/alex/c_cpp/kpz3_5/src/main.cpp

CMakeFiles/application.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/application.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alex/c_cpp/kpz3_5/src/main.cpp > CMakeFiles/application.dir/src/main.cpp.i

CMakeFiles/application.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/application.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alex/c_cpp/kpz3_5/src/main.cpp -o CMakeFiles/application.dir/src/main.cpp.s

CMakeFiles/application.dir/src/main.cpp.o.requires:

.PHONY : CMakeFiles/application.dir/src/main.cpp.o.requires

CMakeFiles/application.dir/src/main.cpp.o.provides: CMakeFiles/application.dir/src/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/application.dir/build.make CMakeFiles/application.dir/src/main.cpp.o.provides.build
.PHONY : CMakeFiles/application.dir/src/main.cpp.o.provides

CMakeFiles/application.dir/src/main.cpp.o.provides.build: CMakeFiles/application.dir/src/main.cpp.o


# Object files for target application
application_OBJECTS = \
"CMakeFiles/application.dir/src/main.cpp.o"

# External object files for target application
application_EXTERNAL_OBJECTS =

application: CMakeFiles/application.dir/src/main.cpp.o
application: CMakeFiles/application.dir/build.make
application: CMakeFiles/application.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alex/c_cpp/kpz3_5/build/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable application"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/application.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/application.dir/build: application

.PHONY : CMakeFiles/application.dir/build

CMakeFiles/application.dir/requires: CMakeFiles/application.dir/src/main.cpp.o.requires

.PHONY : CMakeFiles/application.dir/requires

CMakeFiles/application.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/application.dir/cmake_clean.cmake
.PHONY : CMakeFiles/application.dir/clean

CMakeFiles/application.dir/depend:
	cd /home/alex/c_cpp/kpz3_5/build/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alex/c_cpp/kpz3_5 /home/alex/c_cpp/kpz3_5 /home/alex/c_cpp/kpz3_5/build/debug /home/alex/c_cpp/kpz3_5/build/debug /home/alex/c_cpp/kpz3_5/build/debug/CMakeFiles/application.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/application.dir/depend
