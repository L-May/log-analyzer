#!/bin/bash

# Ask for input
echo "Enter a log level to search (INFO, WARN, ERROR): "
read level

# Check if input is empty
if [ -z "$level" ]; then
    echo "You must enter a log level!"
    exit 1
fi

# filter:
grep "$level" app.log > results.txt

# count:
count=$(wc -l < results.txt)

#conditional:

if [ "$count" -eq 0 ]; then
   echo "No $level lines found."
   exit 0
else
    echo "$count $level lines saved to results.txt"
fi

#loop through results:
n=1
while read -r line; do
    echo "$n: $line"
    n=$((n+1))
done < results.txt

