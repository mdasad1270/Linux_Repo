#!/bin/bash



while true
do
	function user_creation(){
        read -p "Enter user name :- " name
        sudo adduser "$name"

        echo "user $name is created sucessfully"
}

user_creation

done

