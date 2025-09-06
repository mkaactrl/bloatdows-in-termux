#!/bin/bash
# Ask Toolbar Bloatware Script
# Part of the Bloatdows suite for Termux

# Count how many times the user has opened Termux
COUNT_FILE=~/.bloatdows/termux_count
if [ ! -f "$COUNT_FILE" ]; then
    echo "0" > $COUNT_FILE
fi
COUNT=$(cat $COUNT_FILE)
NEW_COUNT=$((COUNT + 1))
echo $NEW_COUNT > $COUNT_FILE

# Every 10th time, spam them with the Ask Toolbar message
if [ $((NEW_COUNT % 10)) -eq 0 ]; then
    echo ""
    echo "Search with Ask.com! (Brought to you by Bloatdows)"
    echo ""
fi
