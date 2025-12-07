#!/bin/bash

# Configuration
SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backups"
DATE=$(date +%F)

BACKUP_NAME="Documents_backup_$DATE.tar.gz"
FULL_PATH="$BACKUP_DIR/$BACKUP_NAME"

# Fix permissions before backup
chmod -R u+rwX,go-rwx "$SOURCE_DIR"

# Create backup folder
mkdir -p "$BACKUP_DIR"

# Create compressed backup while preserving permissions
tar -czpf "$FULL_PATH" "$SOURCE_DIR"

# Check if the backup is successful
if [ $? -eq 0 ]; then
    echo "Backup successful!"
else
    echo "Oops. Backup failed."
fi
