# Directory management
This project explains the regular directory structure and commands to
organize a project.

## Structure
An example of a structure for a project is shown below.
```
.
├── CMakeLists.txt
├── cool_functions.cmake
└── SubProject
    └── CMakeLists.txt
```
A project can inherit another project, or can be slit up into multiple projects.

## Add subdirectory
Adding a subdirectory can be performed by the following command:
```CMake
add_subdirectory(SubProject)
```
This command searches for a CMakeLists.txt in the specified subdirectory.
This can be another project from for example GitHub, or just different target.

projects can be nested, so within a subdirectory, the `add_subdirectory` command can be used again.

## Include
Another command for using other files is the `include` command.
```CMake
include(cool_functions.cmake)
```
This command is used to reuse functions, macros or variables from one file to
multiple projects or files.