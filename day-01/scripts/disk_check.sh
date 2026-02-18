
#!/bin/bash

THRESHOLD=1
LOG_FILE="/home/doru/cloud-engineer/day-01/backups/disk.log"

USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if [ "$USAGE" -ge "$THRESHOLD" ]; then
echo "$TIMESTAMP - WARNING: Disk usage is ${USAGE}% (threshold ${THRESHOLD}%)" | tee -a "$LOG_FILE"
else
echo "$TIMESTAMP - OK: Disk usage is ${USAGE}%" | tee -a "$LOG_FILE"
fi
