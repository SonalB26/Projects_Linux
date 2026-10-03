#!/bin/bash

# Define the target file or directory
TARGET=$1

# Check if an argument was provided
if [ -z "$TARGET" ]; then
    echo "Usage: ./check_file.sh <filename_or_directory>"
    exit 1
fi

# Check if it exists and what type it is
if [ -f "$TARGET" ]; then
    echo "$TARGET is a regular file."
elif [ -d "$TARGET" ]; then
    echo "$TARGET is a directory."
else
    echo "$TARGET does not exist."
fi

