#!/bin/bash

# Script for adding two number

add(){
	addition=$(($1+$2))
	echo "The sum of $1 and $2 is :- $addition"
}

add 15 95


# Script is for multiplication
# This Script will take input from user

function add(){
	multiplication=$(($1*$2))
	echo "The Multiplication of $1 and $2 is :- $multiplication"
}

read -p "Enter number 1 :- " a
read -p "Enter number 2 :- " b

#invoking the function
add $a $b
