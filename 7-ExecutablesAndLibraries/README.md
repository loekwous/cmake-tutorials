# Executables and libraries

This chapter explains how to create executables and libraries. Executables and libraries are essential for managing projects
with CMake.

Executables and libraries are targets. A target is (just as in a Makefile) something that is going to be built, and which can be a required dependency
for another target.

# Executable

An executable target is used to create for example a `.exe` file or for cross platform a `.elf`, `.hex`, or a `.elf`file.

In CMake, an executable target is created using the following command.

```CMake
add_executable(target_name [sources])
```

The target name is required, whereas the sources are optional and can be specified later.

# Libraries

A library can be used to reuse compiled source files for different other libraries or executable.
A minor nuance are the different type of libraries in CMake.

| Library   | Description                                                                   |
| --------- | ----------------------------------------------------------------------------- |
| STATIC    | A static (archived) library, .a for linux and .lib for windows                |
| SHARED    | A shared (archived) library, .so for linux, .dll for windows                  |
| OBJECT    | An object file which is implementation specific. Results in a .o or .obj file |
| INTERFACE | Only provides locations or settings for a target                              |

The term *archived* in the table above means that the source is compiled into object files and archived to be linked later on with
also unrelated projects. The OBJECT library is normally not distributed.

The advantage of using OBJECT is that it is not linked yet and thus has no symbols that were removed.

A library is created with the following instructions.

```CMake
add_library(library_name <OBJECT|STATIC|SHARED|INTERFACE> [library sources])
```