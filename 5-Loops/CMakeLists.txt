cmake_minimum_required(VERSION 3.22.1)
project(MyFirstProject VERSION 0.1.0)

# Lists can be looped using the foreach loop
set(items_to_loop "item1;item2;item3")

# This loops through all the items of the list
foreach(loop_var ${items_to_loop})
  message("One of my items: ${loop_var}")
endforeach()

# This loops from 0 to the number of items in the list Get the length of the
# list
list(LENGTH items_to_loop length_of_list)
# Decrement the number of items by one
math(EXPR length_of_list "${length_of_list} - 1")

# Loop through the values 1, 2 and 3
foreach(loop_var RANGE ${length_of_list})
  # Get the item at index ${loop_var}
  list(GET items_to_loop ${loop_var} current_item)
  message("Item at index ${loop_var} is ${current_item}")
endforeach()

# Another option is to use ZIP_LISTS to get two lists simultaneously
list(
  APPEND
  numeric_items
  1
  2
  3
  4
  5)
list(
  APPEND
  alphabetical_items
  a
  b
  c
  d
  e)
foreach(value IN ZIP_LISTS numeric_items alphabetical_items)
  message("Number is ${value_0} and character is ${value_1}")
endforeach()

# Another loop type is the while loop
set(value 3)
while(${value} LESS 10)
  math(EXPR value "${value} + 1")
  message("value is ${value}")
endwhile()
