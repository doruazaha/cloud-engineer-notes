#!/bin/bash
# Day 13: Conditionals

echo "Enter your name:"
read username
if [ "$username" = "Doru" ]; then
 echo "Access granted. Welcome, $username."
else
 echo "Access denied. You are not Doru."
fi
