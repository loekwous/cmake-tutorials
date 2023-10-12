cmake_minimum_required(VERSION 3.22.1)
project(MyFirstProject VERSION 0.1.0)

option(my_option "For convenience, we set this option to TRUE" ON)
option(my_second_option "Feel free to change this option" OFF)

if(my_option)
  message("my_option is set to ON")
endif()

if(NOT my_second_option)
  message("my_second_option is set to OFF")
endif()

if(my_option AND NOT my_second_option)
  message("my_option is set to ON AND my_second_option is set to OFF")
endif()

if(my_option OR my_second_option)
  message("my_option OR my_second_option is set to ON")
endif()

if(NOT DEFINED my_third_option)
  message("Oops my_third_option is not defined")
endif()
