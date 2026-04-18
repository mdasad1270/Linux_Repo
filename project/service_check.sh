#!/bin/bash

while true
do
    read -p "Enter Service Name :- " name

    if command -v "$name" &> /dev/null
    then
        echo "$name already exists."

        read -p "Do you want to try another service? (y/n): " choice

        if [ "$choice" == "n" ]; then
            echo "Exiting the script..."
            break
        fi

    else
        echo "$name doesn't exist."

        read -p "Do you want to install it? (y/n): " choice2

        if [ "$choice2" == "y" ]; then
            sudo apt install "$name" -y
            echo "Installation Completed!"
        fi

        #Exit after handling non-existing service
        echo "Exiting the script..."
        break
    fi
done
