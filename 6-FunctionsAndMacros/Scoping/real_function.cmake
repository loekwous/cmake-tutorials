function(using_argv)
  # ARGV gives all the arguments as a list
  foreach(arg ${ARGV})
    message("Argument: ${arg}")
  endforeach()
endfunction()

function(using_argn first_variable)
  message("First argument: ${first_variable}")
  # ARGN gives all the remaining arguments as a list
  foreach(arg ${ARGN})
    message("Argument: ${arg}")
  endforeach()
endfunction()

function(using_argc)
  message("Number of arguments: ${ARGC}")
endfunction()
