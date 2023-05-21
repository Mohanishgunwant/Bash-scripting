#!/bin/bash

read -p "What is your name " name
while [[ -z ${name} ]]   #True if the length of the string is zero
do 
 echo "Your name can't  be blank. Please enter a valid name"
 read -p "Enter your name again " name
done

echo "Hi ${name}"