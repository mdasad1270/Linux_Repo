#!/bin/bash

SOURCE_DIR="/home/azureuser/Scripts"
BACKUP_DIR="/home/azureuser/Backups"

TIMESTAMP=$(date +"%Y-%m-%d-%H-%M")
BACKUP_NAME="backup-$(basename "$SOURCE_DIR")-$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

echo "Saved at: $BACKUP_DIR/$BACKUP_NAME"
