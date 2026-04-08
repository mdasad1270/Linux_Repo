#!/usr/bin/env python3

import subprocess

while True:
    try:
        ans = int(input("Press 1 to create or Press 0 to exit :- "))
    except ValueError:
        print("Please enter a valid number (1 or 0)")
        continue

    if ans == 0:
        break

    if ans == 1:
        username = input("Enter User Name :- ")

        # Check if user exists
        result = subprocess.run(["id", username], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        if result.returncode == 0:
            print("user exists")
        else:
            print(f"user {username} doesn't exist, Creating {username}")
            subprocess.run(["sudo", "adduser", username])
            print(f"user {username} created successfully")

print("user creation completed")
