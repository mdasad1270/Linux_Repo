#!/bin/bash

read -p "Enter your marks :- " marks

if [ "$marks" -gt 0 ] && [ "$marks" -le 100 ]; then

    if [ "$marks" -gt 90 ]; then
       echo "Grade A"
    elif [ "$marks" -ge 80 ]; then
       echo "Grade B"
    elif [ "$marks" -ge 70 ]; then
       echo "Grade C"
    elif [ "$marks" -ge 60 ]; then
       echo "Grade D"
    else
       echo "Fail"
    fi

else
	echo "Invalid input ! marks should be between 0 and 100"
fi

