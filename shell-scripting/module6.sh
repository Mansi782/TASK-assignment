#!/bin/bash

# Module 6: Functions

# Function to add two numbers
add() {
    echo $(( $1 + $2 ))
}

echo "Enter first number:"
read num1

echo "Enter second number:"
read num2

if [ -z "$num1" ] || [ -z "$num2" ]
then
    echo "Input cannot be empty"
else
    result=$(add $num1 $num2)
    echo "Sum is: $result"
fi
