#!/bin/bash
# copy.sh - The Bloatdows version of 'cp'
if [ $# -lt 2 ]; then
    echo "COPY: Invalid number of parameters"
    echo "Usage: COPY [source] [destination]"
    exit 1
fi
cp "$1" "$2"
echo "        1 file(s) copied."
echo "C:\Termux\System32>"
