cmake_minimum_required(VERSION 3.22.1)
project(MyFirstProject VERSION 0.1.0)

# Add subdirectory is used to add another project to the current project.
# Targets in the subdirectory are available for the top-level CMakeLists.txt
add_subdirectory(SubProject)

# The include statement is used to include macros, functions and variables.
include(cool_functions.cmake)
