#!/bin/bash

# Ask for the user name
echo "Please enter your name"
read uname

# Get the current time
hour=$(date +"%H")

# Echo greeting based on time
if [ "$hour" -lt 12 ]; then
	echo "Good morning, $uname!"
elif [ "$hour" -lt 18 ]; then
	echo "Good afternoon, $uname"
else 
	echo "Good evening, $uname!"
fi

