#!/bin/bash

read -p "Enter a number: " num

if [ "$num" -ge 1 ] && [ "$num" -le 100 ]; then
    echo "Number is between 1 and 100"
else
    echo "Number is NOT between 1 and 100"
fi
