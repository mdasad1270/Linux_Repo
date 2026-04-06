#!/bin/bash

read -p "Enter a number :- " num

if [ "$num" -lt 10 ] || [ "$num" -gt 20 ]; then
	echo "Number is not between 10 and 20"
else
	echo "Number is between 10 and 20"
fi
