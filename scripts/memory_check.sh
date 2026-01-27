#!/bin/bash

THRESHOLD=80
LOG_FILE="/home/doru/cloud-engineer/day-01/backups/memory.log"

MEMORY_USAGE=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if [ "$MEMORY_USAGE" -ge "$THRESHOLD" ]; then
echo "$TIMESTAMP - WARNING: Memory usage is ${MEMORY_USAGE}% (threshold ${THRESHOLD}%)" | tee -a "$LOG_FILE"
else
echo "$TIMESTAMP - OK: Memory usage is ${MEMORY_USAGE}%" | tee -a "$LOG_FILE"
fi
