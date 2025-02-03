#!/bin/bash

# Define backup variables
SOURCE_DIR="$HOME/accuknox-scripts"
BACKUP_DIR="$HOME/backups"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Create a timestamped backup
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf $BACKUP_FILE $SOURCE_DIR

echo "Backup created: $BACKUP_FILE"
