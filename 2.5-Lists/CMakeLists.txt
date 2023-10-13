cmake_minimum_required(VERSION 3.22.1)
project(MyFirstProject VERSION 0.1.0)

# A list is a string with items separated by semicolons Lists can be created
# with the set command
set(my_list "alpha;beta;gamma")

# This message prints the list with the separators
message("${my_list}")

# This message prints the list without any separators because it is treated as a
# list
message(${my_list})

# the list command can be used for modifying the list or obtaining contents the
# length of a list can be found with LENGTH
list(LENGTH my_list the_length_of_my_list)
message("Length is: ${the_length_of_my_list}")

# The list separator ; can be replaced using the JOIN command the following
# command transforms alpha;beta;gamma into alpha-beta-gamma
set(delimiter "-")
list(JOIN my_list "${delimiter}" string_like_list)
message("String like list: ${string_like_list}")

# A list can be indixed with the GET command
list(GET my_list 0 probably_alpha)
message("After the colon you see alpha: ${probably_alpha}") # yes! outputs
                                                            # "alpha"

# Finding the index of a item is possible with the FIND command
list(FIND my_list "alpha" index_that_is_probably_zero)
message("After the colon you see 0 : ${index_that_is_probably_zero}")

# If it cannot be found, then it returns -1
list(FIND my_list "delta" index_that_is_probably_minus_one)
message("After the colon you see -1 : ${index_that_is_probably_minus_one}")

# The list can be filtered using the FILTER command The way to filter is using
# regular expressions. You can INCLUDE or EXCLUDE items from the list
list(FILTER my_list INCLUDE REGEX "(^[ab]\\w*)")
message("${my_list}") # Is now "alpha;beta"

# An item can be added to the list by using the ADD command
list(APPEND my_list "gamma")
message("${my_list}") # Is now "alpha;beta;gamma again"

# The list can be reversed by using the REVERSE command
list(REVERSE my_list)
message("${my_list}") # Is now "gamma;beta;alpha"

# It can also be sorted by using the SORT command
list(SORT my_list)
message("${my_list}") # Is now obviously "alpha;beta;gamma"

add_subdirectory(Regex)
