#!/bin/bash

read -p "Enter User Name :- " defname

users=$(cut -d: -f1 /etc/passwd)

for user in $users; do
        userid=$(id -u "$user")
        if [ "$userid" -ge 1000 ] && [ "$userid" -lt 60000 ]; then
           if [ "$user" != "$defname" ]; then
                echo "Deleting user: $user"
                sudo userdel -r "$user"
                echo "$user deleted"
           fi
        fi
done
