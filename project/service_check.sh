#!/bin/bash

read -p "Enter service name :- " name

if which $name &> /dev/null;then
    echo "$name already exist..!"
    read -p "Want to install other software? if yes press 1 or press 0 to exist :- " a
    if [ $a -eq 1 ];then
        read -p "enter service name :- " service
        sudo apt install $service -y
        echo "Installation Completed..!"
    else
        echo "Exited the Script."
    fi
else
    read -p "$name doesn't exist? if you want to install press 1 or press 0 to exist :- " b
    if [ $b -eq 1 ];then
        sudo apt install $name -y
        echo "Installation Completed..!"
    else
        echo "Exited the Script."
    fi
fi
