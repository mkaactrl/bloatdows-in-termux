#!/bin/bash

# txtload - Bloatdows Text-Based Driver Loader Utility
device_name="$1"

if [ -z "$device_name" ]; then
    echo "txtload: Error 0x0000001E"
    echo "The specified driver was not found on the system."
    echo "Syntax: txtload [driver_name]"
    exit 1
fi

case $device_name in
    "fdd"|"floppy")
        driver="fdd.sys"
        friendly_name="Floppy Disk Drive (A:)"
        ;;
    "lpt"|"printer")
        driver="lpt1.sys"
        friendly_name="ECP Printer Port (LPT1)"
        ;;
    "sound"|"audio"|"sb16")
        driver="sb16.sys"
        friendly_name="Sound Blaster 16 Audio Device"
        inf_file="sb16.inf"
        ;;
    "net"|"network"|"ne2000")
        driver="ne2000.sys"
        friendly_name="NE2000 Compatible Ethernet Adapter"
        inf_file="ne2000.inf"
        ;;
    *)
        driver="${device_name}.sys"
        friendly_name="Unknown Device (${device_name})"
        ;;
esac

echo "Loading driver for ${friendly_name}..."
sleep 1
echo "Locating file ${driver} in C:\\Windows\\System32\\Drivers\\"
sleep 2

if [ $((RANDOM % 10)) -lt 3 ]; then
    echo "ERROR: File ${driver} is corrupted or could not be found. (Code 0x0000000F)"
    echo "Please insert the Bloatdows Installation CD-ROM and try again."
    exit 1
fi

if [ -n "$inf_file" ] && [ -f "SOURCE/DRIVERS/$inf_file" ]; then
    echo "Reading driver configuration from $inf_file..."
    sleep 1
fi

echo "File found. Allocating system resources..."
sleep 1

echo -n "["
for i in {1..20}; do
    if [ $i -eq 10 ]; then
        sleep 1
        echo -n "#"
    else
        echo -n "#"
        sleep 0.1
    fi
done
echo "]"

if [ $((RANDOM % 10)) -eq 0 ]; then
    echo ""
    echo "A fatal exception 0E has occurred at 0028:C001E36 in Bloatdows -"
    echo "Press any key to continue."
    read -n 1
fi

echo "Driver '${driver}' loaded successfully."
echo "Your hardware is now ready to use. (Probably not.)"
