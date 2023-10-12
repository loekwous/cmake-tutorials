cmake_minimum_required(VERSION 3.22.1)
project(MyFirstProject VERSION 0.1.0)

# CMake is not case sensitive, however it is preferred to use lower-case
# characters. the line that is commented out does the exact same as the line
# above.

set(some_variable "hello_world")
# set(SOME_VARIABLE "hello_world")

# Almost everything is treated as a string as the hello_world above which can
# also be written as the command below. It is recommended to use quotation marks
# to indicate that the argument is a string.
set(another_variable hello_world)

# One exception on string is a boolean variable. This is created with for
# example an option which can be changed by the user. There are four different
# boolean options: ON, TRUE, OFF and FALSE.
option(my_option "My description about this amazing option" TRUE)

# You can refer to a variable using the dollar sign and the variable name
# enclosed in curly brackets.
set(reference_variable ${another_variable})

# Variables can be debugged or tracked using messages. Messages provide a nice
# way to give the user more information about what is going on. Messages take an
# optional argument to provide some distinctions between messages. Some of the
# options are STATUS, WARNING, SEND_ERROR, FATAL_ERROR and so on. Without any of
# these options the message will be printed without a pefix like --
message("A message")
message(
  STATUS "A status message, with my reference_variable: ${reference_variable}")
message(WARNING "A warning message")
message(SEND_ERROR "A send error message, but continues generation")
message(FATAL_ERROR "A fatal error message, which stops the generation")
