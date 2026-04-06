#!/bin/bash

read -p "Enter num1 :- " num1
read -p "Enter num2 :- " num2
read -p "Enter num3 :- " num3

echo "$((num1>num2 && num1<num3))"

echo "$((num1>num2 || num1<num3))"

# with conditionals

if [ "$num1" -gt "$num2" ]; then
	echo "num1 is greater than num2"
else
	echo "num2 is greatest"
fi
