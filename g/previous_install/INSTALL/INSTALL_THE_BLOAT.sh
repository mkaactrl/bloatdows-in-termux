#!/bin/bash

# INSTALL_THE_BLOAT.sh - The ultimate Bloatdows installation experience.
# Warning: This script is a masterpiece of time-wasting.

echo "###############################################"
echo "#    Bloatdows in Termux - Installer v1.0     #"
echo "#   Preparing to simulate a Windows install   #"
echo "###############################################"
echo ""
sleep 2

# Function to simulate a progress bar with random hiccups
bloat_progress() {
    local phase_name="$1"
    local duration=${2:-30}  # Default to 30 seconds if not specified
    echo -n "${phase_name}..."
    sleep 1
    echo -n "["
    for ((i=0; i<duration; i++)); do
        # Random hiccup to simulate Windows instability
        if (( RANDOM % 10 == 0 )); then
            echo -n "#"
            sleep 1
            echo -n "#"
        else
            echo -n "#"
        fi
        sleep 0.5
    done
    echo "]"
    echo "Done."
}

# Phase 1: Fake registry creation
echo "Phase 1/12: Creating critical registry hives..."
sleep 3
mkdir -p ~/.bloatdows/Registry
echo "Adding 14,532 dummy keys... Done."
sleep 1

# Phase 2: The main event - deploying the fake C drive
echo "Phase 2/12: Deploying Core System Files (C:\Windows\)..."
echo "Copying 284,711 files. This will take a while."
sleep 2

# Actually copy the FAKE_C_DRIVE structure to the user's home
mkdir -p ~/.bloatdows/C
c# Actually copy the FAKE_C_DRIVE structure to the user's home with verbose output
echo "Deploying core system files to ~/.bloatdows/C/"
mkdir -p ~/.bloatdows/C
cp -R FAKE_C_DRIVE/* ~/.bloatdows/C/
echo "Core system files deployed."

# Install the actual Bloatdows scripts to a permanent location
echo "Installing Bloatdows utilities to ~/.bloatdows/bin/"
mkdir -p ~/.bloatdows/bin
cp -R SOURCE/SCRIPTS/* ~/.bloatdows/bin/
chmod +x ~/.bloatdows/bin/*

# Add bloatdows scripts to PATH permanently
echo "Corrupting user PATH for authenticity..."
echo 'export PATH="$HOME/.bloatdows/bin:$PATH"' >> ~/.bashrc

# Create a classic Windows-like prompt
echo "Configuring authentic Bloatdows prompt..."
echo "export PS1='C:\Termux\System32> '" >> ~/.bashrcp -R FAKE_C_DRIVE/* ~/.bloatdows/C/
echo "Core system files deployed to ~/.bloatdows/C/"

# Phase 3-12: Various bloatware installation simulations
bloat_progress "Phase 3/12: Installing .NET Framework 3.5" 5
echo "Error: Could not connect to Windows Update. Skipping."

bloat_progress "Phase 4/12: Installing Windows Genuine Advantage Validation" 3

bloat_progress "Phase 5/12: Installing legacy DirectX 9.0c runtime" 4

bloat_progress "Phase 6/12: Installing Microsoft XML Parser (MSXML)" 2

bloat_progress "Phase 7/12: Installing Windows Media Player 11" 5
echo "Note: Codecs not installed. Some features may be limited."

bloat_progress "Phase 8/12: Deploying 1998-2013 Microsoft Java Virtual Machine" 3
echo "Warning: This software contains known security vulnerabilities."

bloat_progress "Phase 9/12: Installing BonziBUDDY companion" 10
echo "Error: Installation failed. Access is denied."

bloat_progress "Phase 10/12: Installing Ask Toolbar" 2
echo "Ask Toolbar successfully installed! Your default search has been changed."
echo "echo 'Search with Ask.com!' >> ~/.bashrc" >> ~/.bashrc

bloat_progress "Phase 11/12: Finalizing settings" 5
echo "Do not power off your device."

# Phase 12: Corrupt the PATH for authenticity
echo "Phase 12/12: Corrupting system PATH for authenticity..."
echo 'export PATH="~/.bloatdows/C/Windows/System32:~/.bloatdows/C/Windows:$PATH"' >> ~/.bashrc
echo "PATH corruption complete."

# Install the actual Bloatdows scripts
echo "Installing Bloatdows utilities..."
mkdir -p ~/../usr/bin/bloatdows
cp SOURCE/SCRIPTS/* ~/../usr/bin/bloatdows/
chmod +x ~/../usr/bin/bloatdows/*

# Add bloatdows scripts to PATH
echo 'export PATH="~/../usr/bin/bloatdows:$PATH"' >> ~/.bashrc

echo ""
echo "###############################################"
echo "#           Installation complete!            #"
echo "#   Please restart Termux to apply the bloat. #"
echo "###############################################"
echo ""
echo "Thank you for choosing Bloatdows!"
sleep 2

# Final "prank" - try to launch a fake application that doesn't exist
echo "Launching Bloatdows Welcome Center..."
sleep 2
echo "Error: application not found."
echo ""
echo "C:\Termux\System32>"
