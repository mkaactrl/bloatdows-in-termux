#!/bin/bash

# tree.sh - A pathetic, janky imitation of the Windows tree command
# Part of the Bloatdows suite for Termux

# Default values
show_all=false
max_depth=999

# Parse arguments (poorly)
for arg in "$@"; do
    case "$arg" in
        /A) show_all=true ;;
        /F) show_all=true ;;
        /?) 
            echo "Graphically displays the folder structure of a drive or path."
            echo ""
            echo "TREE [drive:][path] [/F] [/A]"
            echo "  /F   Display the names of the files in each folder."
            echo "  /A   Use ASCII instead of extended characters."
            exit 0
            ;;
        *)
            if [ -d "$arg" ]; then
                target_dir="$arg"
            else
                echo "Invalid path - $arg"
                exit 1
            fi
            ;;
    esac
done

target_dir="${target_dir:-.}"

# The janky tree-drawing function
draw_tree() {
    local path="$1"
    local prefix="$2"
    local depth="$3"
    
    if (( depth > max_depth )); then
        return
    fi
    
    # Get all items in directory (this will break on spaces)
    local items=()
    if [ -d "$path" ]; then
        if $show_all; then
            items=("$path"/*)
        else
            items=("$path"/*/)
        fi
    fi
    
    local count=${#items[@]}
    local i=0
    
    for item in "${items[@]}"; do
        i=$((i + 1))
        
        # Extract just the name
        local name=$(basename "$item")
        
        # Choose the branch character
        local branch="├── "
        if [ $i -eq $count ]; then
            branch="└── "
        fi
        
        # Display the item
        echo "${prefix}${branch}${name}"
        
        # If it's a directory, recurse (poorly)
        if [ -d "$item" ]; then
            local new_prefix="$prefix"
            if [ $i -eq $count ]; then
                new_prefix="${prefix}    "
            else
                new_prefix="${prefix}│   "
            fi
            draw_tree "$item" "$new_prefix" $((depth + 1))
        fi
    done
}

# Main execution
echo "Folder PATH listing"
echo "Volume serial number is 0000-0000"
echo "$(cd "$target_dir" && pwd)"
echo ""

# Try to draw the tree (this will definitely break on special characters)
draw_tree "$target_dir" "" 1

echo ""
echo "C:\Termux\System32>"
