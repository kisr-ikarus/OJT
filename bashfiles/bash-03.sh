#!/bin/bash

# Create data file
shuf -i 10000-99999 -n 20 > data.txt

# Read and save Min & Max to variables
minval=$(cat data.txt | sort | head -n 1)
maxval=$(cat data.txt | sort | tail -n 1)

# Find the SUM and DIFF Values
sumstr="${maxval} + ${minval}"
difstr="${maxval} - ${minval}"

# Show the Result to the Terminal
sum=$((maxval + minval))
dif=$((maxval - minval))
echo "${sumstr} = ${sum}"
echo "${difstr} = ${dif}"

exit 0
