
# Day 27 – Logging and Log Rotation

## Problem
Logs grow forever and fill disks

## Solution
logrotate manages log size

## Config example
/home/doru/cloud-engineer/day-01/backups/*.log

Options:
- daily
- rotate 7
- compress
- missingok
- notifempty
- copytruncate

## Importance
Prevents disk crashes
Used in all production systems
