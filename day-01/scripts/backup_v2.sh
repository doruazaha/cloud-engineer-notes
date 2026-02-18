
#!/bin/bash
# Day 16: Backup automation with logging and flags

SOURCE_DIR="$HOME/cloud-engineer/day-01/data"
BACKUP_DIR="$HOME/cloud-engineer/day-01/backups"
LOG_FILE="$HOME/cloud-engineer/day-01/backups/backup.log"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
FORCE=false

log() {
echo "$(date +"%Y-%m-%d %H:%M:%S") - $1" | tee -a "$LOG_FILE"
}

usage() {
echo "Usage: $0 [--force]"
exit 1
}

# Parse flags
for arg in "$@"; do
if [ "$arg" = "--force" ]; then
FORCE=true
else
usage
fi
done

backup_files() {
if [ ! -d "$SOURCE_DIR" ]; then
log "ERROR: Source directory does not exist: $SOURCE_DIR"
exit 1
fi

mkdir -p "$BACKUP_DIR"

if [ "$FORCE" = false ]; then
echo "About to back up: $SOURCE_DIR"
echo "Destination: $BACKUP_DIR/backup_$TIMESTAMP"
echo "Proceed? (yes/no)"
read answer

if [ "$answer" != "yes" ]; then
log "Backup cancelled by user."
exit 0
fi
fi

cp -r "$SOURCE_DIR" "$BACKUP_DIR/backup_$TIMESTAMP"

log "Backup completed successfully."
log "Backup location: $BACKUP_DIR/backup_$TIMESTAMP"
}

backup_files

