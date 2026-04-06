#!/bin/bash

read -p "Enter num1 :- " a
read -p "Enter num2 :- " b

echo "is $a is equal to $b : $((a==b))"
echo "is $a is not equal to $b : $((a!=b))"
echo "is $a is greater than $b : $((a>b))"
echo "is $a is less than  $b : $((a<b))"
echo "is $a is less than or equal to $b : $((a<=b))"
echo "is $a is greater than or equal to $b : $((a>=b))"


# With conditionals

if [ "$a" -gt "$b" ]; then
	echo "$a is greater than $b"
elif [ "$a" -lt  "$b" ]; then
	echo "$a is smaller than $b"
else
	echo "$a is equal to $b"
fi
