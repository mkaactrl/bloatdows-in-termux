#!/bin/bash

# ipconfig.sh - A pathetic mimic of Windows ipconfig
# Part of the Bloatdows suite for Termux

if [[ "$1" == "/all" ]]; then
    echo "Windows IP Configuration (simulated)"
    echo ""
    echo "Ethernet adapter Ethernet:"
    echo "   Connection-specific DNS Suffix  . :"
    echo "   Description . . . . . . . . . . . : Realtek PCIe GbE Family Controller"
    echo "   Physical Address. . . . . . . . . : AA-BB-CC-DD-EE-FF"
    echo "   DHCP Enabled. . . . . . . . . . . : Yes"
    echo "   Autoconfiguration Enabled . . . . : Yes"
    echo "   Link-local IPv6 Address . . . . . : fe80::1234:5678:90ab%12(Preferred)"
    echo "   IPv4 Address. . . . . . . . . . . : 192.168.1.101(Preferred)"
    echo "   Subnet Mask . . . . . . . . . . . : 255.255.255.0"
    echo "   Lease Obtained. . . . . . . . . . : Thursday, January 1, 1970 12:00:00 AM"
    echo "   Lease Expires . . . . . . . . . . : Thursday, January 1, 1970 12:00:00 AM"
    echo "   Default Gateway . . . . . . . . . : 192.168.1.1"
    echo "   DHCP Server . . . . . . . . . . . : 192.168.1.1"
    echo "   DNS Servers . . . . . . . . . . . : 8.8.8.8"
    echo "   NetBIOS over Tcpip. . . . . . . . : Enabled"
else
    # Just show the IP address if no /all flag
    ip addr show | grep "inet " | grep -v "127.0.0.1" | awk '{print $2}' | head -n 1
fi
