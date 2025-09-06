#!/bin/bash

# start.sh - The Bloatdows "open things" command
# Part of the Bloatdows suite for Termux

if [ $# -eq 0 ]; then
    echo "START: Invalid number of parameters"
    echo "Usage: START [application] [arguments]"
    echo "       START [document]"
    exit 1
fi

target="$1"

# Simulate the classic Windows start command behavior
case "$target" in
    # Try to detect and open URLs
    http://*|https://*|www.*)
        echo "Attempting to open URL: $target"
        if command -v termux-open-url &> /dev/null; then
            termux-open-url "$target"
        else
            echo "Cannot open URL: termux-open-url not found"
        fi
        ;;
    
    # Try to open directories with termux-file-editor or fallback to ls
    .|*/)
        if [ -d "$target" ]; then
            echo "Opening directory: $target"
            if command -v termux-file-editor &> /dev/null; then
                termux-file-editor "$target"
            else
                ls -la "$target"
            fi
        else
            echo "Directory not found: $target"
        fi
        ;;
    
    # Try to open files with termux-file-editor
    *)
        if [ -f "$target" ]; then
            echo "Opening file: $target"
            if command -v termux-file-editor &> /dev/null; then
                termux-file-editor "$target"
            else
                cat "$target"
            fi
        else
            # Application launching simulation (for built-in apps)
            case "$target" in
                notepad|notepad.exe)
                    echo "Launching Bloatdows Notepad..."
                    exec notepad
                    ;;
                calculator|calc.exe)
                    echo "Launching Bloatdows Calculator..."
                    exec calculator
                    ;;
                *)
                    echo "Starting application: $target"
                    echo "Error: Application not found or failed to launch"
                    ;;
            esac
        fi
        ;;
esac

echo "C:\Termux\System32>"
