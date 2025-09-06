#!/bin/bash

# generate_logo.sh - Creates the glorious Bloatdows logo
# Part of the Bloatdows suite for Termux

echo "Generating Bloatdows logo..."

# Create temporary directory
mkdir -p /tmp/bloatdows_logo
cd /tmp/bloatdows_logo

# Define the colors (approximating Windows 11)
BLUE="#0078D4"
GREEN="#107C10"
RED="#E81123"
YELLOW="#F9F1A5"

# Create the four squares
convert -size 256x256 xc:"$BLUE" blue.png
convert -size 256x256 xc:"$GREEN" green.png
convert -size 256x256 xc:"$RED" red.png
convert -size 256x256 xc:"$YELLOW" yellow.png

# Montage them into the flag layout
montage blue.png green.png red.png yellow.png -tile 2x2 -geometry +0+0 base_logo.png

# Create the text layer with Comic Sans (the star of the show)
convert -background none -fill white -gravity center \
        -font Comic-Sans-MS -pointsize 40 \
        -stroke black -strokewidth 2 \
        label:"BLOATDOWS" \
        text_layer.png

# Composite the text over the base logo
composite -gravity center text_layer.png base_logo.png bloatdows_logo.png

# Copy to current directory
cp bloatdows_logo.png ~/bloatdows-in-termux/

# Clean up
cd ~
rm -rf /tmp/bloatdows_logo

echo "Logo generated: bloatdows_logo.png"
echo "Use 'termux-open bloatdows_logo.png' to view it!"

echo "C:\Termux\System32>"
