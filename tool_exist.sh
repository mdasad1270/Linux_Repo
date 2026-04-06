#!/bin/bash

read -p "Enter Tool Name :- " tool

if which "$tool" &> /dev/null;then
	echo "Tool Already Exist"
else
	echo "Tool Not Found Installing $tool"
	sudo apt install $tool -y
	echo "$tool installed"
fi
