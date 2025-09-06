#!/bin/bash
# type.sh - The Bloatdows version of 'cat'
if [ $# -eq 0 ]; then
    echo "TYPE: Invalid number of parameters"
    echo "Usage: TYPE [file]"
    exit 1
fi
cat "$1"
echo "C:\Termux\System32>"
