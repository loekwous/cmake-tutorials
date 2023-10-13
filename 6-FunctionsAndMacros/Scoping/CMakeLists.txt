# ---------------------------------------------------------------- Functions
set(a_variable_outside_the_function 1)

function(scoping_function)
  set(a_variable_in_the_function 1)
  message("a_variable_in_the_function = ${a_variable_in_the_function}")
  # A variable outside the function still exists in the function
  message(
    "a_variable_outside_the_function in the function = ${a_variable_outside_the_function}"
  )
endfunction()

# A variable defined in the function does not exist outside the function
scoping_function()
message(
  "a_variable_in_the_function outside the function = ${a_variable_in_the_function} << does not exist"
)

message("a_variable_outside_the_function = ${a_variable_outside_the_function}")

# ---------------------------------------------------------------- Macros

set(a_variable_outside_the_macro 1)

macro(scoping_macro)
  set(a_variable_in_the_macro 1)
  message("a_variable_in_the_macro = ${a_variable_in_the_macro}")
  # A variable outside the macro still exists in the macro
  message(
    "a_variable_outside_the_macro in the macro = ${a_variable_outside_the_macro}"
  )
endmacro()

# A variable defined in the macro still exist outside the macro
scoping_macro()
message(
  "a_variable_in_the_macro outside the macro = ${a_variable_in_the_macro}")

message("a_variable_outside_the_macro = ${a_variable_outside_the_macro}")

# ---------------------------------------------------------------- PARENT_SCOPE
# for functions

function(parent_scope_function variable)
  set(available_variable
      ${variable}
      PARENT_SCOPE)
endfunction()

parent_scope_function("Am I accessible?")
message("variable = ${variable}")
message("available_variable = ${available_variable}")

# ---------------------------------------------------------------- provide a
# variable name

function(assign_name variable_name variable_value)
  set(${variable_name} ${variable_value})
  # Since variable_name still contains a string it must be dereferenced a second
  # time
  message("variable_name = ${${variable_name}}")

  # In order to make it accessible outside the function scope the variable must
  # be defined with PARENT_SCOPE
  set(${variable_name}
      ${variable_value}
      PARENT_SCOPE)
  # Also useable is:
  set(${variable_name}
      ${${variable_name}}
      PARENT_SCOPE)
endfunction()

assign_name(outside_variable "Hello, world!")
message("outside_variable = ${outside_variable}")

include(real_function.cmake)

# ARGV contains all the arguments
using_argv("a" "b" "c")

# Takes the first variable and ARGN contains the remaining variables
using_argn("a" "b" "c")

# Returns the number of arguments
using_argc("a" "b" "c")
