#!/bin/bash

# Specify the directory containing your code
code_directory="/path/to/code"

# Specify the backup directory
backup_directory="/path/to/code_backup"

# Create a timestamped backup
timestamp=$(date +"%Y%m%d%H%M%S")
cp -r "$code_directory" "$backup_directory/code_backup_$timestamp"

echo "Code backup completed!"
