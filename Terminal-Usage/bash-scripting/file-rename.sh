#!/bin/bash

# Specify the directory containing the files
directory="/path/to/files"

# Specify the prefix for the new filenames
prefix="new_file"

# Iterate through files and rename them
count=1
for file in "$directory"/*; do
    extension="${file##*.}"
    new_name="${prefix}_${count}.${extension}"
    mv "$file" "$directory/$new_name"
    ((count++))
done

echo "Files renamed successfully!"
