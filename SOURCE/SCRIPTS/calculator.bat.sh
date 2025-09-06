#!/bin/bash

# calculator.bat.sh - The worst calculator you'll ever use
# Part of the Bloatdows suite for Termux

echo "Bloatdows Calculator"
echo "Version 1.0 (Build 2600)"
echo "Copyright (C) 2024 Bloatdows. All rights reserved."
echo ""
echo "Note: For advanced mathematics, try using a real calculator."
echo ""

# Simple calculator function that barely works
bloat_calculator() {
    echo "Enter first number:"
    read num1
    echo "Enter operation (+, -, *, /):"
    read op
    echo "Enter second number:"
    read num2
    
    # Validate input very poorly
    if ! [[ "$num1" =~ ^-?[0-9]*\.?[0-9]+$ ]] || ! [[ "$num2" =~ ^-?[0-9]*\.?[0-9]+$ ]]; then
        echo "ERROR: Invalid number input"
        return 1
    fi
    
    case $op in
        "+")
            result=$(echo "$num1 + $num2" | bc -l 2>/dev/null || echo "scale=2; $num1 + $num2" | bc)
            ;;
        "-")
            result=$(echo "$num1 - $num2" | bc -l 2>/dev/null || echo "scale=2; $num1 - $num2" | bc)
            ;;
        "*")
            result=$(echo "$num1 * $num2" | bc -l 2>/dev/null || echo "scale=2; $num1 * $num2" | bc)
            ;;
        "/")
            if [ "$num2" -eq "0" ] 2>/dev/null; then
                echo "ERROR: Division by zero"
                return 1
            fi
            result=$(echo "scale=2; $num1 / $num2" | bc -l 2>/dev/null || echo "scale=2; $num1 / $num2" | bc)
            ;;
        *)
            echo "ERROR: Invalid operation"
            return 1
            ;;
    esac
    
    echo "Result: $result"
}

# Main loop
while true; do
    echo "Select operation:"
    echo "1. Basic Calculator"
    echo "2. Exit"
    echo ""
    read -p "Enter choice (1-2): " choice
    
    case $choice in
        1)
            bloat_calculator
            ;;
        2)
            echo "Thank you for using Bloatdows Calculator!"
            break
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
    
    echo ""
done

echo "C:\Termux\System32>"
