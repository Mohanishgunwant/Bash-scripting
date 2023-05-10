#!/bin/bash

read -p "Punch a number " number
if [[ $number -gt 0 ]]; then
	echo "Its a positive number"
elif [[ $number -lt 0 ]]; then
	echo "its a negative number"
else 
    echo "the number you puched is 0"
fi

