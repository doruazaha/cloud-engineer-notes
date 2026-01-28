#!/bin/bash

LOG_DIR="/home/doru/cloud-engineer/day-01/backups"
LOG_FILE="$LOG_DIR/health.log"
ARCHIVE="$LOG_DIR/health_$(date +%Y-%m-%d).log"

if [ -f "$LOG_FILE" ]; then
mv "$LOG_FILE" "$ARCHIVE"
touch "$LOG_FILE"
fi
