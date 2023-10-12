message("I am called via add_subdirectory")

# The CMAKE_SOURCE_DIR variable is always the location of the top-level
# CMakeLists.txt. The CMAKE_CURRENT_SOURCE_DIR variable is always the location
# of the current CMakeLists.txt.
message("The directory of my parent: ${CMAKE_SOURCE_DIR}")
message("My own directory: ${CMAKE_CURRENT_SOURCE_DIR}")
