# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\pchmi\CLionProjects\Ships the Game"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\pchmi\CLionProjects\Ships the Game\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles\projC.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\projC.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\projC.dir\flags.make

CMakeFiles\projC.dir\main.c.obj: CMakeFiles\projC.dir\flags.make
CMakeFiles\projC.dir\main.c.obj: ..\main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\pchmi\CLionProjects\Ships the Game\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/projC.dir/main.c.obj"
	"C:\PROGRA~2\Microsoft Visual Studio\2019\BuildTools\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoCMakeFiles\projC.dir\main.c.obj /FdCMakeFiles\projC.dir\ /FS -c "C:\Users\pchmi\CLionProjects\Ships the Game\main.c"
<<

CMakeFiles\projC.dir\main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/projC.dir/main.c.i"
	"C:\PROGRA~2\Microsoft Visual Studio\2019\BuildTools\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" > CMakeFiles\projC.dir\main.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\pchmi\CLionProjects\Ships the Game\main.c"
<<

CMakeFiles\projC.dir\main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/projC.dir/main.c.s"
	"C:\PROGRA~2\Microsoft Visual Studio\2019\BuildTools\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\cl.exe" @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\projC.dir\main.c.s /c "C:\Users\pchmi\CLionProjects\Ships the Game\main.c"
<<

# Object files for target projC
projC_OBJECTS = \
"CMakeFiles\projC.dir\main.c.obj"

# External object files for target projC
projC_EXTERNAL_OBJECTS =

projC.exe: CMakeFiles\projC.dir\main.c.obj
projC.exe: CMakeFiles\projC.dir\build.make
projC.exe: CMakeFiles\projC.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\pchmi\CLionProjects\Ships the Game\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable projC.exe"
	"C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\projC.dir --rc="C:\PROGRA~2\Windows Kits\10\bin\10.0.18362.0\x86\rc.exe" --mt="C:\PROGRA~2\Windows Kits\10\bin\10.0.18362.0\x86\mt.exe" --manifests  -- "C:\PROGRA~2\Microsoft Visual Studio\2019\BuildTools\VC\Tools\MSVC\14.26.28801\bin\Hostx86\x86\link.exe" /nologo @CMakeFiles\projC.dir\objects1.rsp @<<
 /out:projC.exe /implib:projC.lib /pdb:"C:\Users\pchmi\CLionProjects\Ships the Game\cmake-build-debug\projC.pdb" /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\projC.dir\build: projC.exe

.PHONY : CMakeFiles\projC.dir\build

CMakeFiles\projC.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\projC.dir\cmake_clean.cmake
.PHONY : CMakeFiles\projC.dir\clean

CMakeFiles\projC.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" "C:\Users\pchmi\CLionProjects\Ships the Game" "C:\Users\pchmi\CLionProjects\Ships the Game" "C:\Users\pchmi\CLionProjects\Ships the Game\cmake-build-debug" "C:\Users\pchmi\CLionProjects\Ships the Game\cmake-build-debug" "C:\Users\pchmi\CLionProjects\Ships the Game\cmake-build-debug\CMakeFiles\projC.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles\projC.dir\depend

