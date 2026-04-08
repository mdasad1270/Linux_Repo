#!/bin/bash

#Taking user name
read -p "Enter your name:- " name

# User age
read -p "What is you age :- " age

# here i am using -s flag
read -p  "Your phone password :- " -s password



# Output sections
echo "My name is $name"
echo "i am $age years old"
echo "Password is $password"

echo # using space between two command's output

# Disk space
echo "Disk Space $(df -h)"

echo # using space between two command's output

#My current path
echo "This is my current path $(pwd)"

echo # using space between two command's output

# Check Ram usage
echo "Ram usage $(free -h |  awk '{print $1, $2, $3}')"
