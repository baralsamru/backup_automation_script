#!/bin/bash

# Configuration
SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backups"
DATE=$(date +%F)

BACKUP_NAME="Documents_backup_$DATE.tar.gz"
FULL_PATH="$BACKUP_DIR/$BACKUP_NAME"

# Create backup folder
mkdir -p "$BACKUP_DIR"

# Create compressed backup
tar -czf "$FULL_PATH" "$SOURCE_DIR"

# Check if  the bacup is successful
if [ $? -eq 0 ]; then
    echo " Backup successful!"
else
    echo "Oops.  Backup failed."
fi






