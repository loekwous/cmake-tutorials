cmake_minimum_required(VERSION 3.22.1)
project(MyFirstProject VERSION 0.1.0)


# For linux platforms this executable is named `app`
add_executable(app main.cpp)


# For linux platforms this executable will create a `libmy_library.a`
# Notice the lib prefix, which is prepended for linux platforms
add_library(my_library STATIC my_library.cpp)
