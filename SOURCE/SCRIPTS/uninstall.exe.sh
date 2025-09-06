#!/bin/bash

# uninstall.exe.sh - The uninstaller that doesn't uninstall
# Part of the Bloatdows suite for Termux

echo "Bloatdows Uninstall Utility"
echo "Version 1.0.2600.0"
echo ""

# Display a scary warning
echo "WARNING: This will remove all Bloatdows components from your system."
echo "This action cannot be undone."
echo ""
read -p "Do you want to continue? (Y/N): " -n 1 -r
echo ""
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Uninstall cancelled."
    echo "C:\Termux\System32>"
    exit 0
fi

# Begin the uninstall farce
echo "Starting uninstall process..."
echo "Removing core system components..."
sleep 2

# Fake progress bar
echo -n "["
for i in {1..20}; do
    # Random chance to simulate errors
    if (( RANDOM % 5 == 0 )); then
        echo -n "?"
        sleep 0.5
        echo -n "#"
    else
        echo -n "#"
    fi
    sleep 0.2
done
echo "]"
echo ""

# 50% chance to "fail" spectacularly
if (( RANDOM % 2 == 0 )); then
    echo "ERROR 0x80070005: Access is denied."
    echo "Some components could not be removed."
    echo "Please ensure you have administrator privileges and try again."
else
    echo "Uninstall completed successfully."
    echo "Note: Some components may remain installed for system stability."
    
    # The ultimate troll - actually install MORE bloat
    echo "Installing additional components for future compatibility..."
    sleep 2
    echo "Bloatdows Update Service installed successfully."
fi

echo ""
echo "A system reboot is required to complete the uninstall process."
echo "Please restart your Termux session."
echo ""
echo "C:\Termux\System32>"
