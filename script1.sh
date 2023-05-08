#!/bin/bash

read -p "What is your name? " name
if [[ -z ${name} ]]        #True if the length of the string is zero
then
     echo "Please enter your name "
 else
     echo "Welcome ${name}"
 fi



