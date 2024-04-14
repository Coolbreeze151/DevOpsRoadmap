#!/bin/bash

# Connect to a remote SFTP server
sftp username@remote-server

# Upload a file to the remote server
put local-file.txt

# Download a file from the remote server
get remote-file.txt

# List files on the remote server
ls

# Exit the SFTP session
exit
