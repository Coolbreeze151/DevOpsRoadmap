# Define the source and destination file paths
$sourceFile = "\\server1\share\file.txt"
$destinationFile = "\\server2\share\file.txt"

# Copy the file to the destination server
Copy-Item -Path $sourceFile -Destination $destinationFile
