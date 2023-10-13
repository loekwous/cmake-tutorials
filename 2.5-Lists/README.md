# Lists
This project dives a bit deeper into variables using lists.
For the full documentation on lists refer to [lists](https://cmake.org/cmake/help/latest/command/list.html).

Similar functionalities are available for [strings](https://cmake.org/cmake/help/latest/command/string.html).

## Reason for using lists
The list options are very useful for looping through targets or directories.
A lot of functions are implemented but not easy to find.

```CMake
set(my_list "alpha;beta;gamma)
set(delimiter "-")
list(JOIN my_list "${delimiter}" string_like_list)
message("String like list: ${string_like_list}")
```
The CMake code above is used to convert a list to a string.
Even though it doesn't seem straightforward to use the word JOIN, but it means literally:
"Join the items together in a string with the provided delimiter."

the output for that piece of CMake is as follows:
```
alpha-beta-gamma
```

## Using regex for lists

Regex is used for matching in lists and strings. The following example shows how to
include items that match the regex pattern. In this example, `INCLUDE` is used, but another option
is to use `EXCLUDE` instead.

```CMake
list(FILTER my_list INCLUDE REGEX "(^[ab]\\w*)")
message("${my_list}")
```

The outcome will be...
```
alpha;beta
```

some great examples for cmake REGEX are the following:
```CMake

```

The folder `Regex/` contains some regex operations with lists and strings.
| pattern    | input | match |
| ---------- | ----- | ----- |
| ([a-z]+)   | abc   | abc   |
|            | ab9   | ab    |
|            | 9ab   | ab    |
| (^[a-z]+)  | 9ab   | ab    |
| (^[a-z]+$) | 9ab   |       |
|            | bab   | bab   |
