#!/bin/bash

read -p "Enter Software Name :- " name

if which $name &> /dev/null;then
        echo "$name already exist..!"
else
        echo "$name dosen't exist, Installing $name..."
        sudo apt install $name -y
        echo "Installation Completed"
fi
