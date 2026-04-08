#!/bin/bash

for i in {1..20};do
	if (( $i % 2 == 0 )); then
		echo "$i"
	fi

done

echo "<---------------For Loop Ends Here------------------>"

# While Loop
a=1

while [ $a -lt 21 ];do
	if (( $a % 2 == 0 )); then
		echo "$a"
	fi
	a=$((a+1))
done

echo "<-------------While Loop Ends Here-------------------->"

# Until Loop

a=1

until [ $a -gt 21 ];do
        if (( $a % 2 == 0 )); then
                echo "$a"
        fi
        a=$((a+1))
done

echo "<-------------Until Loop Ends Here-------------------->"
