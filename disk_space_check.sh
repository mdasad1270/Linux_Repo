#!/bin/bash

usage=$( df | awk '{print $5}' | head -n 3 | tail -n 1 | cut -d% -f1 )
echo "$usage"
if [ $usage -gt 80 ];then
	echo "Disc usage is more :- $usage"
else
	echo "Disc usage is normal :- $usage"
fi
