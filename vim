#!/bin/bash

#!/bin/bash

read -p "Enter a number: " num

if (( num % 3 == 0 || num % 5 == 0 )); then
    echo "Number is divisible by 3 or 5"
else
    echo "Number is NOT divisible by 3 or 5"
fi
