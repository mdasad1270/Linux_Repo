#!/bin/bash

read -p "Enter service Name :- " name

service=$(which $name)
final_service=${service##*/}

if [ "$final_service" = "$name" ];then
	if pgrep $name > /dev/null;then
		echo "$name is Running..."
	else
		echo "$name is Stop!"
	fi
else
	echo "service not found $name"
fi
