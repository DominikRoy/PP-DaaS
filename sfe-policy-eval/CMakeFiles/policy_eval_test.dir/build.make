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
CMAKE_SOURCE_DIR = /home/osboxes/sfe-policy-eval

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/osboxes/sfe-policy-eval

# Include any dependencies generated for this target.
include CMakeFiles/policy_eval_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/policy_eval_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/policy_eval_test.dir/flags.make

CMakeFiles/policy_eval_test.dir/policy_eval_test.cpp.o: CMakeFiles/policy_eval_test.dir/flags.make
CMakeFiles/policy_eval_test.dir/policy_eval_test.cpp.o: policy_eval_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/sfe-policy-eval/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/policy_eval_test.dir/policy_eval_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/policy_eval_test.dir/policy_eval_test.cpp.o -c /home/osboxes/sfe-policy-eval/policy_eval_test.cpp

CMakeFiles/policy_eval_test.dir/policy_eval_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/policy_eval_test.dir/policy_eval_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/osboxes/sfe-policy-eval/policy_eval_test.cpp > CMakeFiles/policy_eval_test.dir/policy_eval_test.cpp.i

CMakeFiles/policy_eval_test.dir/policy_eval_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/policy_eval_test.dir/policy_eval_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/osboxes/sfe-policy-eval/policy_eval_test.cpp -o CMakeFiles/policy_eval_test.dir/policy_eval_test.cpp.s

CMakeFiles/policy_eval_test.dir/common/policy.cpp.o: CMakeFiles/policy_eval_test.dir/flags.make
CMakeFiles/policy_eval_test.dir/common/policy.cpp.o: common/policy.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/sfe-policy-eval/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/policy_eval_test.dir/common/policy.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/policy_eval_test.dir/common/policy.cpp.o -c /home/osboxes/sfe-policy-eval/common/policy.cpp

CMakeFiles/policy_eval_test.dir/common/policy.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/policy_eval_test.dir/common/policy.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/osboxes/sfe-policy-eval/common/policy.cpp > CMakeFiles/policy_eval_test.dir/common/policy.cpp.i

CMakeFiles/policy_eval_test.dir/common/policy.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/policy_eval_test.dir/common/policy.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/osboxes/sfe-policy-eval/common/policy.cpp -o CMakeFiles/policy_eval_test.dir/common/policy.cpp.s

CMakeFiles/policy_eval_test.dir/common/parser.cpp.o: CMakeFiles/policy_eval_test.dir/flags.make
CMakeFiles/policy_eval_test.dir/common/parser.cpp.o: common/parser.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/osboxes/sfe-policy-eval/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/policy_eval_test.dir/common/parser.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/policy_eval_test.dir/common/parser.cpp.o -c /home/osboxes/sfe-policy-eval/common/parser.cpp

CMakeFiles/policy_eval_test.dir/common/parser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/policy_eval_test.dir/common/parser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/osboxes/sfe-policy-eval/common/parser.cpp > CMakeFiles/policy_eval_test.dir/common/parser.cpp.i

CMakeFiles/policy_eval_test.dir/common/parser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/policy_eval_test.dir/common/parser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/osboxes/sfe-policy-eval/common/parser.cpp -o CMakeFiles/policy_eval_test.dir/common/parser.cpp.s

# Object files for target policy_eval_test
policy_eval_test_OBJECTS = \
"CMakeFiles/policy_eval_test.dir/policy_eval_test.cpp.o" \
"CMakeFiles/policy_eval_test.dir/common/policy.cpp.o" \
"CMakeFiles/policy_eval_test.dir/common/parser.cpp.o"

# External object files for target policy_eval_test
policy_eval_test_EXTERNAL_OBJECTS =

policy_eval_test: CMakeFiles/policy_eval_test.dir/policy_eval_test.cpp.o
policy_eval_test: CMakeFiles/policy_eval_test.dir/common/policy.cpp.o
policy_eval_test: CMakeFiles/policy_eval_test.dir/common/parser.cpp.o
policy_eval_test: CMakeFiles/policy_eval_test.dir/build.make
policy_eval_test: ABY/lib/libaby.a
policy_eval_test: ABY/lib/libencrypto_utils.a
policy_eval_test: ABY/lib/libotextension.a
policy_eval_test: ABY/lib/libencrypto_utils.a
policy_eval_test: ABY/lib/libmiracl.a
policy_eval_test: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
policy_eval_test: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
policy_eval_test: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
policy_eval_test: /usr/lib/x86_64-linux-gnu/libgmp.so
policy_eval_test: /usr/lib/x86_64-linux-gnu/libgmpxx.so
policy_eval_test: /usr/lib/x86_64-linux-gnu/libcrypto.so
policy_eval_test: /usr/lib/x86_64-linux-gnu/libgmp.so
policy_eval_test: CMakeFiles/policy_eval_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/osboxes/sfe-policy-eval/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable policy_eval_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/policy_eval_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/policy_eval_test.dir/build: policy_eval_test

.PHONY : CMakeFiles/policy_eval_test.dir/build

CMakeFiles/policy_eval_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/policy_eval_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/policy_eval_test.dir/clean

CMakeFiles/policy_eval_test.dir/depend:
	cd /home/osboxes/sfe-policy-eval && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/osboxes/sfe-policy-eval /home/osboxes/sfe-policy-eval /home/osboxes/sfe-policy-eval /home/osboxes/sfe-policy-eval /home/osboxes/sfe-policy-eval/CMakeFiles/policy_eval_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/policy_eval_test.dir/depend

