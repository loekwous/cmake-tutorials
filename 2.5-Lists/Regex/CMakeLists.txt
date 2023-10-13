set(input_list "library;executable;interface")
list(FILTER input_list EXCLUDE REGEX "(^lib\\w*)")
message("${input_list}") # library is removed

string(REGEX REPLACE "([0-9]+_)" "my_" output_string "234_object")
message("${output_string}") # Is now my_object

string(REGEX MATCH "([0-9]+_[a-z|0-9]*)" output_string "234_object" "234_"
             "object")
message("${output_string}") # Is now 234_object234_ because the first two
                            # strings match and are concatenated
