# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/emmanoe/git/tm2dhashi/sdl2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/emmanoe/git/tm2dhashi/sdl2/build

# Include any dependencies generated for this target.
include CMakeFiles/model.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/model.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/model.dir/flags.make

CMakeFiles/model.dir/src/main.c.o: CMakeFiles/model.dir/flags.make
CMakeFiles/model.dir/src/main.c.o: ../src/main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/emmanoe/git/tm2dhashi/sdl2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/model.dir/src/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/model.dir/src/main.c.o   -c /home/emmanoe/git/tm2dhashi/sdl2/src/main.c

CMakeFiles/model.dir/src/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/model.dir/src/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/emmanoe/git/tm2dhashi/sdl2/src/main.c > CMakeFiles/model.dir/src/main.c.i

CMakeFiles/model.dir/src/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/model.dir/src/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/emmanoe/git/tm2dhashi/sdl2/src/main.c -o CMakeFiles/model.dir/src/main.c.s

CMakeFiles/model.dir/src/main.c.o.requires:

.PHONY : CMakeFiles/model.dir/src/main.c.o.requires

CMakeFiles/model.dir/src/main.c.o.provides: CMakeFiles/model.dir/src/main.c.o.requires
	$(MAKE) -f CMakeFiles/model.dir/build.make CMakeFiles/model.dir/src/main.c.o.provides.build
.PHONY : CMakeFiles/model.dir/src/main.c.o.provides

CMakeFiles/model.dir/src/main.c.o.provides.build: CMakeFiles/model.dir/src/main.c.o


CMakeFiles/model.dir/src/model.c.o: CMakeFiles/model.dir/flags.make
CMakeFiles/model.dir/src/model.c.o: ../src/model.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/emmanoe/git/tm2dhashi/sdl2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/model.dir/src/model.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/model.dir/src/model.c.o   -c /home/emmanoe/git/tm2dhashi/sdl2/src/model.c

CMakeFiles/model.dir/src/model.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/model.dir/src/model.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/emmanoe/git/tm2dhashi/sdl2/src/model.c > CMakeFiles/model.dir/src/model.c.i

CMakeFiles/model.dir/src/model.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/model.dir/src/model.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/emmanoe/git/tm2dhashi/sdl2/src/model.c -o CMakeFiles/model.dir/src/model.c.s

CMakeFiles/model.dir/src/model.c.o.requires:

.PHONY : CMakeFiles/model.dir/src/model.c.o.requires

CMakeFiles/model.dir/src/model.c.o.provides: CMakeFiles/model.dir/src/model.c.o.requires
	$(MAKE) -f CMakeFiles/model.dir/build.make CMakeFiles/model.dir/src/model.c.o.provides.build
.PHONY : CMakeFiles/model.dir/src/model.c.o.provides

CMakeFiles/model.dir/src/model.c.o.provides.build: CMakeFiles/model.dir/src/model.c.o


CMakeFiles/model.dir/src/game.c.o: CMakeFiles/model.dir/flags.make
CMakeFiles/model.dir/src/game.c.o: ../src/game.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/emmanoe/git/tm2dhashi/sdl2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/model.dir/src/game.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/model.dir/src/game.c.o   -c /home/emmanoe/git/tm2dhashi/sdl2/src/game.c

CMakeFiles/model.dir/src/game.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/model.dir/src/game.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/emmanoe/git/tm2dhashi/sdl2/src/game.c > CMakeFiles/model.dir/src/game.c.i

CMakeFiles/model.dir/src/game.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/model.dir/src/game.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/emmanoe/git/tm2dhashi/sdl2/src/game.c -o CMakeFiles/model.dir/src/game.c.s

CMakeFiles/model.dir/src/game.c.o.requires:

.PHONY : CMakeFiles/model.dir/src/game.c.o.requires

CMakeFiles/model.dir/src/game.c.o.provides: CMakeFiles/model.dir/src/game.c.o.requires
	$(MAKE) -f CMakeFiles/model.dir/build.make CMakeFiles/model.dir/src/game.c.o.provides.build
.PHONY : CMakeFiles/model.dir/src/game.c.o.provides

CMakeFiles/model.dir/src/game.c.o.provides.build: CMakeFiles/model.dir/src/game.c.o


CMakeFiles/model.dir/src/node.c.o: CMakeFiles/model.dir/flags.make
CMakeFiles/model.dir/src/node.c.o: ../src/node.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/emmanoe/git/tm2dhashi/sdl2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/model.dir/src/node.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/model.dir/src/node.c.o   -c /home/emmanoe/git/tm2dhashi/sdl2/src/node.c

CMakeFiles/model.dir/src/node.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/model.dir/src/node.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/emmanoe/git/tm2dhashi/sdl2/src/node.c > CMakeFiles/model.dir/src/node.c.i

CMakeFiles/model.dir/src/node.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/model.dir/src/node.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/emmanoe/git/tm2dhashi/sdl2/src/node.c -o CMakeFiles/model.dir/src/node.c.s

CMakeFiles/model.dir/src/node.c.o.requires:

.PHONY : CMakeFiles/model.dir/src/node.c.o.requires

CMakeFiles/model.dir/src/node.c.o.provides: CMakeFiles/model.dir/src/node.c.o.requires
	$(MAKE) -f CMakeFiles/model.dir/build.make CMakeFiles/model.dir/src/node.c.o.provides.build
.PHONY : CMakeFiles/model.dir/src/node.c.o.provides

CMakeFiles/model.dir/src/node.c.o.provides.build: CMakeFiles/model.dir/src/node.c.o


CMakeFiles/model.dir/src/load.c.o: CMakeFiles/model.dir/flags.make
CMakeFiles/model.dir/src/load.c.o: ../src/load.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/emmanoe/git/tm2dhashi/sdl2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/model.dir/src/load.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/model.dir/src/load.c.o   -c /home/emmanoe/git/tm2dhashi/sdl2/src/load.c

CMakeFiles/model.dir/src/load.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/model.dir/src/load.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/emmanoe/git/tm2dhashi/sdl2/src/load.c > CMakeFiles/model.dir/src/load.c.i

CMakeFiles/model.dir/src/load.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/model.dir/src/load.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/emmanoe/git/tm2dhashi/sdl2/src/load.c -o CMakeFiles/model.dir/src/load.c.s

CMakeFiles/model.dir/src/load.c.o.requires:

.PHONY : CMakeFiles/model.dir/src/load.c.o.requires

CMakeFiles/model.dir/src/load.c.o.provides: CMakeFiles/model.dir/src/load.c.o.requires
	$(MAKE) -f CMakeFiles/model.dir/build.make CMakeFiles/model.dir/src/load.c.o.provides.build
.PHONY : CMakeFiles/model.dir/src/load.c.o.provides

CMakeFiles/model.dir/src/load.c.o.provides.build: CMakeFiles/model.dir/src/load.c.o


CMakeFiles/model.dir/src/drawline.c.o: CMakeFiles/model.dir/flags.make
CMakeFiles/model.dir/src/drawline.c.o: ../src/drawline.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/emmanoe/git/tm2dhashi/sdl2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/model.dir/src/drawline.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/model.dir/src/drawline.c.o   -c /home/emmanoe/git/tm2dhashi/sdl2/src/drawline.c

CMakeFiles/model.dir/src/drawline.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/model.dir/src/drawline.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/emmanoe/git/tm2dhashi/sdl2/src/drawline.c > CMakeFiles/model.dir/src/drawline.c.i

CMakeFiles/model.dir/src/drawline.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/model.dir/src/drawline.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/emmanoe/git/tm2dhashi/sdl2/src/drawline.c -o CMakeFiles/model.dir/src/drawline.c.s

CMakeFiles/model.dir/src/drawline.c.o.requires:

.PHONY : CMakeFiles/model.dir/src/drawline.c.o.requires

CMakeFiles/model.dir/src/drawline.c.o.provides: CMakeFiles/model.dir/src/drawline.c.o.requires
	$(MAKE) -f CMakeFiles/model.dir/build.make CMakeFiles/model.dir/src/drawline.c.o.provides.build
.PHONY : CMakeFiles/model.dir/src/drawline.c.o.provides

CMakeFiles/model.dir/src/drawline.c.o.provides.build: CMakeFiles/model.dir/src/drawline.c.o


CMakeFiles/model.dir/src/manage_bridge.c.o: CMakeFiles/model.dir/flags.make
CMakeFiles/model.dir/src/manage_bridge.c.o: ../src/manage_bridge.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/emmanoe/git/tm2dhashi/sdl2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/model.dir/src/manage_bridge.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/model.dir/src/manage_bridge.c.o   -c /home/emmanoe/git/tm2dhashi/sdl2/src/manage_bridge.c

CMakeFiles/model.dir/src/manage_bridge.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/model.dir/src/manage_bridge.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/emmanoe/git/tm2dhashi/sdl2/src/manage_bridge.c > CMakeFiles/model.dir/src/manage_bridge.c.i

CMakeFiles/model.dir/src/manage_bridge.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/model.dir/src/manage_bridge.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/emmanoe/git/tm2dhashi/sdl2/src/manage_bridge.c -o CMakeFiles/model.dir/src/manage_bridge.c.s

CMakeFiles/model.dir/src/manage_bridge.c.o.requires:

.PHONY : CMakeFiles/model.dir/src/manage_bridge.c.o.requires

CMakeFiles/model.dir/src/manage_bridge.c.o.provides: CMakeFiles/model.dir/src/manage_bridge.c.o.requires
	$(MAKE) -f CMakeFiles/model.dir/build.make CMakeFiles/model.dir/src/manage_bridge.c.o.provides.build
.PHONY : CMakeFiles/model.dir/src/manage_bridge.c.o.provides

CMakeFiles/model.dir/src/manage_bridge.c.o.provides.build: CMakeFiles/model.dir/src/manage_bridge.c.o


# Object files for target model
model_OBJECTS = \
"CMakeFiles/model.dir/src/main.c.o" \
"CMakeFiles/model.dir/src/model.c.o" \
"CMakeFiles/model.dir/src/game.c.o" \
"CMakeFiles/model.dir/src/node.c.o" \
"CMakeFiles/model.dir/src/load.c.o" \
"CMakeFiles/model.dir/src/drawline.c.o" \
"CMakeFiles/model.dir/src/manage_bridge.c.o"

# External object files for target model
model_EXTERNAL_OBJECTS =

model: CMakeFiles/model.dir/src/main.c.o
model: CMakeFiles/model.dir/src/model.c.o
model: CMakeFiles/model.dir/src/game.c.o
model: CMakeFiles/model.dir/src/node.c.o
model: CMakeFiles/model.dir/src/load.c.o
model: CMakeFiles/model.dir/src/drawline.c.o
model: CMakeFiles/model.dir/src/manage_bridge.c.o
model: CMakeFiles/model.dir/build.make
model: /usr/local/lib/libSDL2main.a
model: /usr/local/lib/libSDL2.so
model: /usr/lib/x86_64-linux-gnu/libSDL2_image.so
model: /usr/lib/x86_64-linux-gnu/libSDL2_ttf.so
model: CMakeFiles/model.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/emmanoe/git/tm2dhashi/sdl2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C executable model"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/model.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/model.dir/build: model

.PHONY : CMakeFiles/model.dir/build

CMakeFiles/model.dir/requires: CMakeFiles/model.dir/src/main.c.o.requires
CMakeFiles/model.dir/requires: CMakeFiles/model.dir/src/model.c.o.requires
CMakeFiles/model.dir/requires: CMakeFiles/model.dir/src/game.c.o.requires
CMakeFiles/model.dir/requires: CMakeFiles/model.dir/src/node.c.o.requires
CMakeFiles/model.dir/requires: CMakeFiles/model.dir/src/load.c.o.requires
CMakeFiles/model.dir/requires: CMakeFiles/model.dir/src/drawline.c.o.requires
CMakeFiles/model.dir/requires: CMakeFiles/model.dir/src/manage_bridge.c.o.requires

.PHONY : CMakeFiles/model.dir/requires

CMakeFiles/model.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/model.dir/cmake_clean.cmake
.PHONY : CMakeFiles/model.dir/clean

CMakeFiles/model.dir/depend:
	cd /home/emmanoe/git/tm2dhashi/sdl2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/emmanoe/git/tm2dhashi/sdl2 /home/emmanoe/git/tm2dhashi/sdl2 /home/emmanoe/git/tm2dhashi/sdl2/build /home/emmanoe/git/tm2dhashi/sdl2/build /home/emmanoe/git/tm2dhashi/sdl2/build/CMakeFiles/model.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/model.dir/depend

