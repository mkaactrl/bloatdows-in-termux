#!/bin/bash

# help.sh - The most authentic, useless Windows help command
# Part of the Bloatdows suite for Termux

echo "BLOATDOWS HELP SYSTEM - BUILD 2600"
echo "For more information on a specific command, type HELP command-name"
echo ""

# Display ALL THE COMMANDS in a classic format
cat << "HELPEND"
DIR          Displays a list of files and subdirectories in a directory.
IPCONFIG     Displays all current TCP/IP network configuration values.
TREE         Graphically displays the directory structure of a drive or path.
TXTLOAD      Loads a specified driver into memory.
START        Starts a separate window to run a specified program or command.
NOTEPAD      Starts the Bloatdows text editor.
CALCULATOR   Starts the Bloatdows calculator.
WINVER       Displays the Bloatdows version information.
FORMAT       Formats a disk for use with Bloatdows.
HELP         Provides Help information for Bloatdows commands.
CLS          Clears the screen.

For more information on tools see the command-line reference in the online help.
HELPEND

echo ""
echo "C:\Termux\System32>"
