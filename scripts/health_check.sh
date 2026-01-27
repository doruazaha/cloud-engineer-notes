
#!/bin/bash

DISK_THRESHOLD=1
CPU_THRESHOLD=1
MEM_THRESHOLD=1

LOG_FILE="/home/doru/cloud-engineer/day-01/backups/health.log"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

STATUS="OK"

# ---- Disk Check ----
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$DISK_USAGE" -ge "$DISK_THRESHOLD" ]; then
DISK_STATUS="WARNING: Disk ${DISK_USAGE}%"
STATUS="WARNING"
else
DISK_STATUS="OK: Disk ${DISK_USAGE}%"
fi

# ---- CPU Check ----
CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}' | sed 's/,/./')
CPU_USAGE=$(awk "BEGIN {print 100 - $CPU_IDLE}")

if (( $(echo "$CPU_USAGE >= $CPU_THRESHOLD" | bc -l) )); then
CPU_STATUS="WARNING: CPU ${CPU_USAGE}%"
STATUS="WARNING"
else
CPU_STATUS="OK: CPU ${CPU_USAGE}%"
fi

# ---- Memory Check ----
MEM_USAGE=$(free | awk '/Mem:/ {printf("%.0f"), $3/$2 * 100}')

if [ "$MEM_USAGE" -ge "$MEM_THRESHOLD" ]; then
MEM_STATUS="WARNING: MEM ${MEM_USAGE}%"
STATUS="WARNING"
else
MEM_STATUS="OK: MEM ${MEM_USAGE}%"
fi

# ---- Final Report ----
echo "$TIMESTAMP | $STATUS | $DISK_STATUS | $CPU_STATUS | $MEM_STATUS" | tee -a "$LOG_FILE"
