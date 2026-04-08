#!/bin/bash

read -p "Press 1 to create or  Press 0 to exit :- " ans

while [ "$ans" -eq 1 ]; do
        read -p "Enter User Name :- " username

        if id "$username" &> /dev/null;then
                echo "user exist"
        else
                echo "user $username doesn't exist, Creating $username"
                sudo adduser $username
                echo "user $username created sucessfully"
        fi
        read -p "press 1 to continue or 0 to exit :- " ans
done
echo "user creation completed"
