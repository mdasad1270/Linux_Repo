#!/bin/bash

disk=$( df -h | awk '{print $5}' | head -n 2 | tail -n 1 )

disk_value=${disk%\%}

if [ $disk_value -gt 75 ];then
	echo "Disc Space is full :- $disk"
else
	echo "Disc Space is normal :- $disk"
fi
