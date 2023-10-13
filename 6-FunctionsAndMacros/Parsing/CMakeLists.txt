function(add_target target_name)
  set(flags IS_PRIVATE)
  set(args SECUNDARY_NAME)
  set(listArgs COMPILER_FLAGS SOURCES INCLUDE_DIRS)

  cmake_parse_arguments(arguments "${flags}" "${args}" "${listArgs}" ${ARGN})

  message("Adding target \"${target_name}\" with the following properties")

  foreach(flag ${arguments_COMPILER_FLAGS})
    message("compiler flag: ${flag}")
  endforeach()

  foreach(source ${arguments_SOURCES})
    message("source: ${source}")
  endforeach()

  foreach(dir ${arguments_INCLUDE_DIRS})
    message("dir: ${dir}")
  endforeach()

  message("Is private: ${arguments_IS_PRIVATE}")
  message("Secundary name: ${arguments_SECUNDARY_NAME}")

endfunction()

add_target(
  some_target
  COMPILER_FLAGS
  "-g"
  "-Og"
  "-Werror"
  SOURCES
  "Main.cpp"
  "Startup.s"
  "Application.cpp"
  INCLUDE_DIRS
  "Inc/"
  "Helpers/"
  IS_PRIVATE
  SECUNDARY_NAME
  "another_target")
