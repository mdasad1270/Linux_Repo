#!/bin/bash

total_disk=$( df -m | awk '/\/dev\/root/ {print $2}' )
used_disk=$( df -m | awk '/\/dev\/root/ {print $3}' )

usage=$((used_disk * 100 / total_disk))

if [ "$usage" -gt 75 ]; then
    echo "ALERT: Disk Space is High  - ${usage}%"
else
    echo "OK: Disk Space is normal - ${usage}%"
fi
