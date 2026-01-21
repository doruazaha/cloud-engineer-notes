# Day 15 - File operations and Backup Automation

## What I learned today
 - How to copy files and directories with cp 
 - How to create timestamped backups
 - How to use date in scripts
 - How to check if a directory exists
 - How to build a real automation script

 ## Script created
 -backup.sh

 ## Commands practiced
- mkdir
- cp -r
- date
- if [ -d ]
- nano
- chmod +x

## Key Concepts
- Automation scripts protect data
 - Always validate paths before copying
 - TImestamps prevent overwriting backups
 - Functions organize logic
 - SCripts should fail safely

## Problems I faced
-

## Fixes/ Notes
- Always quote paths
- use mkdir -p for safety
- exit script on fatal errors
