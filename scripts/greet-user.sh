#!/bin/bash
# Day 14: Function with user input

greet() {
 echo "Hello, $1! Welcome back."
}

echo "Enter your name:"
read username

greet "$username"
