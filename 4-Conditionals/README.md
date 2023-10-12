# Conditionals
This project covers conditionals using the IF statement.
For all the if statements refer to [the documentation](https://cmake.org/cmake/help/latest/command/if.html)

# If in general
The IF statement is defind as follows:
```CMake
if(condition)
    do_something()
endif()
```

A lot of extra expressions can be added to the IF statement, but it is easier to read the original documentation in this case.

# Logical operators
You can use logical operators like `AND` or `OR` in front of a variable or boolean expression.
Conditions can be enclosed in parentheses to create a logic group.

```CMake
if(something OR (NOT inverted_something AND (another_condition OR last_condition)))
    do_something_very_special()
endif()
```

# Useful operators
```CMake
if(COMMAND some_command)
    # True if some_command is a callable command
endif()
```
```CMake
if(TARGET some_target)
    # True if some_target is an existing target
endif()
```

```CMake
if(DEFINED something_defined)
    # True if something_defined is defined
endif()
```

```CMake
if(EXISTS some_file_or_directory)
    # True if some_file_or_directory is an existing file or directory
endif()
```

```CMake
if(some_path PATH_EQUAL another_path)
    # True if some_path is the same path as another_path
endif()
```

```CMake
if(some_variable_or_string MATCHES ${some_regex_pattern})
    # True if some_variable_or_string matches the regex pattern
endif()
```

## Variable comparison
Variables can be compared using `LESS`, `GREATER`, `EQUAL`, `LESS_EQUAL` and `GREATER_EQUAL`.

```CMake
if(some_number LESS another_number)
    # True if some_number is less than another_number
endif()
```

## String comparison

Strings can be compared using string operators.
| Operator         | Definition                                                            |
| ---------------- | --------------------------------------------------------------------- |
| STRLESS          | True if left is lexicographically (alphabetically) less than right    |
| STRGREATER       | True if left is lexicographically (alphabetically) greater than right |
| STREQUAL         | True if left is equal to right                                        |
| STRLESS_EQUAL    | Self explanatory                                                      |
| STRGREATER_EQUAL | Self explanatory                                                      |