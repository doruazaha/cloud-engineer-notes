#!/bin/bash

THRESHOLD=80
LOG_FILE="/home/doru/cloud-engineer/day-01/backups/cpu.log"

CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}' | sed 's/,/./')
CPU_USAGE=$(awk "BEGIN {print 100 - $CPU_IDLE}")

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if (( $(echo "$CPU_USAGE >= $THRESHOLD" | bc -l) )); then
echo "$TIMESTAMP - WARNING: CPU usage is ${CPU_USAGE}% (threshold ${THRESHOLD}%)" | tee -a "$LOG_FILE"
else
echo "$TIMESTAMP - OK: CPU usage is ${CPU_USAGE}%" | tee -a "$LOG_FILE"
fi
