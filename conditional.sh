#!/bin/bash


if [[ -z $1 ]]
then        #True if length of string is 0  # ERROR HANDLING-  If no argument is provided, the code will throw an error since $1 will be empty. You can handle this case by checking if the argument is present before performing the comparisons.                       
    echo "No argument provided. Please provide a number."
    exit 1
elif ! [[ $1 =~ ^-?[0-9]+$ ]]
then   #Input Validation: The code assumes that the user will provide a numeric input as the first argument. However, it doesn't validate if the argument is indeed a number. You can add input validation to ensure the argument is a number before performing the comparisons.
    echo "Oops, '$1' is not a number. Please provide a valid number."
    exit 1
elif [[ $1 -gt 0 ]]
then
    echo "$1 is positive."
elif [[ $1 -lt 0 ]] 
then
    echo "$1 is negative."
else
    echo "$1 is zero."
fi

# 'elif !' means negation of condition or we can say if the condition is false, then execute the code block under it.
#  ' =~ ': This operator is used for pattern matching within the [[ ... ]] construct. It checks if the value on the left side matches the pattern on the right side.
#' ^-?[0-9]+$ ': This is a regular expression pattern used to match a number. Breaking it down further;
#               ^: Indicates the start of the string.
#               -?: Matches an optional minus sign (-). This allows for negative numbers.
#               [0-9]+: Matches one or more digits (0-9).
#               $: Indicates the end of the string.
# Therefore, [[ $1 =~ ^-?[0-9]+$ ]] checks if the value of $1 matches the pattern for an integer number, including negative numbers. If the value is a valid integer, the condition will evaluate to true.