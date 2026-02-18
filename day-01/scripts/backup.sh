
#!/bin/bash
# Day 15: Simple backup automation script

SOURCE_DIR="$HOME/cloud-engineer/day-01/data"
BACKUP_DIR="$HOME/cloud-engineer/day-01/backups"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

backup_files() {
if [ ! -d "$SOURCE_DIR" ]; then
echo "❌ Source directory does not exist: $SOURCE_DIR"
exit 1
fi

mkdir -p "$BACKUP_DIR"

cp -r "$SOURCE_DIR" "$BACKUP_DIR/backup_$TIMESTAMP"

echo "✅ Backup completed:"
echo "$BACKUP_DIR/backup_$TIMESTAMP"
}

backup_files
