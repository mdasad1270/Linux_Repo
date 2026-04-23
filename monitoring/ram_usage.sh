#!/bin/bash

ram_used=$(free | awk '/Mem:/ {print $3}')
ram_total=$(free | awk '/Mem:/ {print $2}')

usage=$((ram_used * 100 / ram_total))

if [ "$usage" -gt 70 ]; then
    echo "ALERT: High RAM usage - ${usage}%"
else
    echo "OK: RAM usage normal - ${usage}%"
fi
