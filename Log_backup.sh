#!/bin/bash

BACKUP_DIR="backup_folder"

# Create backup directory if it doesn't exist
if [ ! -d "$BACKUP_DIR" ]; then
    mkdir "$BACKUP_DIR"
    echo "Created directory: $BACKUP_DIR"
fi

# Loop through all .txt files in the current directory
for FILE in *.txt; do
    # Check if there are actually text files to prevent errors
    if [ -f "$FILE" ]; then
        cp "$FILE" "$BACKUP_DIR/"
        echo "Backed up $FILE to $BACKUP_DIR/"
    fi
done

echo "Backup complete!"

