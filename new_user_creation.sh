#!/bin/bash

echo "Press 1 to create or  Press 0 to exit"
read ans

while [ $ans -eq 1 ];do
	echo "Enter username :- "
	read username
	if id "$username" &> /dev/null;then
		echo "user $username already exist"
	else
		sudo adduser $username
		echo "user created"
	fi
	echo "Do you wish to continue? if yes press1 or press 0 to exit"
	read ans
done

echo "user creation completed"
