#!/bin/bash
# del.sh - The Bloatdows version of 'rm'
if [ $# -eq 0 ]; then
    echo "DEL: Invalid number of parameters"
    echo "Usage: DEL [file]"
    exit 1
fi
rm "$1"
echo "C:\Termux\System32>"
