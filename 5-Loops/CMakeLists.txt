cmake_minimum_required(VERSION 3.22.1)
project(MyFirstProject VERSION 0.1.0)

# Lists can be looped using the foreach loop
set(items_to_loop "item1;item2;item3")

foreach(loop_var items_to_loop)
  message("${loop_var}")
endforeach()
