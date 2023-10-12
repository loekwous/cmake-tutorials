# Variables and messages
This project explains about using variables and messages.

## Set
CMake is not case sensitive, however it is preferred to use lower-case
characters. Quotation marks are used to indicate that it is string, but it is
not mandatory. The following CMake lines do the exact same thing.
You can use the [set](https://cmake.org/cmake/help/latest/command/set.html) command to create a variable.

```CMake
set(some_variable "hello_world")
set(SOME_VARIABLE "hello_world")
set(some_variable hello_world)
```

## Options

One exception on string is a boolean variable. This is created with for
example an [option](https://cmake.org/cmake/help/latest/command/option.html) which can be changed by the user. There are four different
boolean options: `ON`, `TRUE`, `OFF` and `FALSE`.
```CMake
option(my_option "My description about this amazing option" TRUE)
```

## Dereference a variable
You can refer to a variable using the dollar sign and the variable name
enclosed in curly brackets.

```CMake
set(reference_variable ${another_variable})
```

## Messages
Variables can be debugged or tracked using messages. Messages provide a nice
way to give the user more information about what is going on. Messages take an
optional argument to provide some distinctions between messages. Some of the
options are `STATUS`, `WARNING`, `SEND_ERROR`, `FATAL_ERROR` and so on.
For more information, see [the documentation](https://cmake.org/cmake/help/latest/command/message.html).

```CMake
message("A message")
message(
  STATUS "A status message, with my reference_variable: ${reference_variable}")
message(WARNING "A warning message")
message(SEND_ERROR "A send error message, but continues generation")
message(FATAL_ERROR "A fatal error message, which stops the generation")
```

The messages above result in the following output:

```
A message
-- A status message, with my reference_variable: hello_world
CMake Warning at CMakeLists.txt:33 (message):
  A warning message


CMake Error at CMakeLists.txt:34 (message):
  A send error message, but continues generation


CMake Error at CMakeLists.txt:35 (message):
  A fatal error message, which stops the generation
```