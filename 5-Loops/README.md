# Loops
This project covers loops using the FOREACH and WHILE statement.
For the full documentation on foreach refer to [foreach](https://cmake.org/cmake/help/latest/command/foreach.html)

# FOREACH in general
The FOREACH statement is defined as follows:
```CMake
foreach(loop_varialble items)
    do_something()
endforeach()
```

A lot of extra expressions can be added to the FOREACH statement, but it is easier to read the original documentation in this case.

# FOREACH operators
```CMake
foreach(loop_var RANGE list_length)
    # loop_var starts with 0 and goes up to (and including) list_length
endforeach()
```
```CMake
foreach(loop_var start stop [step])
    # loop_var starts with the value 'start' and goes up to (and inlcuding) 'stop'
    # with a increment of 'step'
endforeach()
```
```CMake
foreach(loop_var ZIP_LISTS list_1 [list_n])
    # you get a 'loop_var' for each list witch contains the value of in that list
endforeach()
```

# WHILE loops
a while loop in CMake keeps going as long as the condition is true
```CMake
while(condition)
    # Code is being executed until the condition is false at 'endwhile()'
endwhile()
```
