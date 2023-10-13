cmake_minimum_required(VERSION 3.22.1)
project(MyFirstProject VERSION 0.1.0)

function(my_function)
  message("I'm inside my_function")
endfunction()

macro(my_macro)
  message("I'm inside my_macro")
endmacro()

my_function()

my_macro()

function(my_function_with_parameters first_name last_name)
  message("My name is ${first_name} ${last_name}")
endfunction()

my_function_with_parameters("Loek" "Lankhorst")

add_subdirectory(Scoping)
add_subdirectory(Returning)
add_subdirectory(Parsing)
