#!/bin/bash
# move.sh - The Bloatdows version of 'mv'
if [ $# -lt 2 ]; then
    echo "MOVE: Invalid number of parameters"
    echo "Usage: MOVE [source] [destination]"
    exit 1
fi
mv "$1" "$2"
echo "        1 file(s) moved."
echo "C:\Termux\System32>"
