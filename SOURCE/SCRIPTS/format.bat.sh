#!/bin/bash

# format.bat.sh - The ultimate Bloatdows prank
# Part of the Bloatdows suite for Termux

echo "Bloatdows XP Format Utility"
echo "WARNING, ALL DATA ON NON-REMOVABLE DISK DRIVE C: WILL BE LOST!"
echo "Proceed with Format (Y/N)?"

# Read a single character without requiring Enter
read -n 1 -r answer
echo ""

if [[ $answer =~ ^[Yy]$ ]]; then
    echo "Formatting drive C:"
    echo -n "["
    for i in {1..20}; do
        # Random hiccups to simulate actual formatting
        if [ $i -eq 8 ]; then
            echo -n "#"
            sleep 1
            echo -n "¿"
            sleep 0.5
            echo -n "#"
        else
            echo -n "#"
        fi
        sleep 0.3
    done
    echo "]"
    echo ""
    echo "Format complete. 4,294,967,295 bytes total disk space."
    echo "4,294,967,295 bytes available on disk."
    echo ""
    echo "Invalid system disk. Please insert a boot disk and press any key."
    
    # Wait for any key press
    read -n 1 -s -r -p ""
    echo ""
    echo ""
    echo "Just kidding! :) This is Termux. We don't do that here."
    echo "Your files are safe. Probably."
else
    echo "Format cancelled. No actions were taken."
fi

echo "C:\Termux\System32>"
