#!/bin/bash

status (){
if pgrep docker;then
	echo "Running Docker"
else
	echo "Docker Inactive"
fi
}

if which docker &> /dev/null;then
	echo "Docker Exist"
	status
else
	echo "Docker dosen't exist"
fi
