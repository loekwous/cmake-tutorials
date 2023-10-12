# Basic project
This project contains the minimum actions to create an executable from
c++ source code.

## CMake minimum required
This command validates that the version used by the user is at least
the required version of CMake
```CMake
cmake_minimum_required(VERSION 3.22.1)
```

## Project
When starting a CMake project, run the following command to set the 
`CMAKE_PROJECT_NAME` variable to the name of the CMake project and to
populate the `MyFirstProject_VERSION_MAJOR` and `MyFirstProject_VERSION_MINOR` variables.
```CMake
project(MyFirstProject VERSION 0.1.0)
```
## Add exectuable
This command is explained in the following examples, but in short it
creates a target that results in an executable.
```CMake
add_executable(MyFirstExecutable "main.cpp")
```