#!/bin/bash

read -p "Enter number1 :- " num1

read -p "Enter number2 :- " num2

if [ "$num1" -gt "$num2" ]; then
	echo "Number 1 is greater than Number 2"
else
	echo "Number 2 is greater"
fi


# Without conditionals

echo "is a equal to b? $((num1==num2))"
echo "is a greater than b? $((num1>num2))"
