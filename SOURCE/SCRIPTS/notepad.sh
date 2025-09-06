#!/bin/bash

# notepad.sh - The Bloatdows text editor experience
# Part of the Bloatdows suite for Termux

echo "Microsoft (R) Bloatdows Notepad"
echo "Version 1.0.2600.0 (Bloatdows XP)"
echo ""

# Check if file argument is provided
if [ $# -eq 0 ]; then
    echo "Launching Bloatdows Notepad with new file..."
    echo ""
    # Launch nano without a file
    nano
else
    file="$1"
    if [ -f "$file" ]; then
        echo "Opening existing file: $file"
        echo ""
        nano "$file"
    elif [ -d "$file" ]; then
        echo "ERROR: Cannot open '$file' because it is a directory."
        echo "C:\Termux\System32>"
        exit 1
    else
        echo "Creating new file: $file"
        echo ""
        nano "$file"
    fi
fi

echo ""
echo "C:\Termux\System32>"
