# When starting with a project, use this line to be aligned with the users CMake
# version This is required to ensure that all functionalities are supported.
cmake_minimum_required(VERSION 3.22.1)

# Every project requires the following command which introduces the version
# numbers starting with the project name, MyFirstProject_VERSION_MAJOR
# MyFirstProject_VERSION_MINOR
project(MyFirstProject VERSION 0.1.0)

# This command produces an executable with the name MyFirstExecutable from
# main.cpp
add_executable(MyFirstExecutable "main.cpp")
