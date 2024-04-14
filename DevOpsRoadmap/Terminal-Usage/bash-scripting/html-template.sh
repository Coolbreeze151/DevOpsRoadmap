#!/bin/bash

# Specify HTML template details
title="My Web Page"
author="John Doe"

# Create HTML file with metadata
cat > index.html <<EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>$title</title>
    <meta name="author" content="$author">
</head>
<body>
    <h1>Welcome to $title</h1>
    <p>Created by $author</p>
</body>
</html>
EOF

echo "HTML template generated successfully!"
