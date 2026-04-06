#!/bin/bash

#!/bin/bash

read -p "Enter a number: " num

if (( num % 2 != 0 && num > 50 )); then
    echo "Number is odd and greater than 50"
else
    echo "Condition not satisfied"
fi
