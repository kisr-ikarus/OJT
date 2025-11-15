#!/bin/bash

# This is a BASH script example
user=$(whoami)
host=$(hostname);timestamp=$(date +"%H:%M")

# combine into string
string="This script is executed by ${user} on ${host} at ${timestamp}" 
echo ${string}
