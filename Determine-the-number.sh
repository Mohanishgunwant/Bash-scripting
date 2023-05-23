#!/bin/bash

read -p "Punch a number " number
if [[ $number -gt 0 ]]; then
	echo "Its a positive number"
elif [[ $number -lt 0 ]]; then
	echo "its a negative number"
else 
    echo "the number you puched is 0"
fi


#To comment selected text in vscode use: ctrl+K+C in windows

#Below is if else elif structure:
# if condition
#  then
#  condition is zero (true - 0)
#  execute all commands up to elif statement
#  elif condition1
#  condition1 is zero (true - 0)
#  execute all commands up to elif statement
#  elif condition2
#  condition2 is zero (true - 0)
#  execute all commands up to elif statement
# Linux Shell Script Tutorial
# http://www.freeos.com/guides/lsst/shellprog.htm (13 of 19) [17/08/2001 17.42.21]
#  else
#  None of the above condtion,condtion1,condtion2 are true (i.e.
#  all of the above nonzero or false)
#  execute all commands up to fi
#  fi