#!/bin/bash

# generate_bloat.sh - Creates thousands of empty system files
# Run this during installation to maximize suffering

echo "Generating system files... (This may take a while)"

# Create essential Windows directories
mkdir -p ~/.bloatdows/C/Windows/System32/Drivers
mkdir -p ~/.bloatdows/C/Windows/System32/spool
mkdir -p ~/.bloatdows/C/Windows/System32/wbem
mkdir -p ~/.bloatdows/C/Program Files/Common Files
mkdir -p ~/.bloatdows/C/ProgramData/Microsoft/Windows/Start Menu

# Generate 5000 empty DLL, EXE, and SYS files with realistic names
for i in {1..5000}; do
    # Choose a random file type
    file_type=$((RANDOM % 3))
    case $file_type in
        0) ext=".dll"; prefix="api" ;;
        1) ext=".exe"; prefix="win" ;;
        2) ext=".sys"; prefix="drv" ;;
    esac
    
    # Create the empty file
    touch ~/.bloatdows/C/Windows/System32/${prefix}${i}${ext}
    
    # Show progress every 100 files
    if (( i % 100 == 0 )); then
        echo "Created ${i} system files..."
    fi
done

echo "System file generation complete. Enjoy the bloat."
