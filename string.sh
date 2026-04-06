#!/bin/bash

read -p "Enter a string :- " str1
read -p "Enter a string :- " str2

echo "string are equal ?$([ "$str1" = "$str2" ] && echo yes || echo no )"

# With conditionals

if [ "$str1" = "$str2" ]; then
	echo "string 1 is equal to string 2"
else
	echo "Both are different"
fi
