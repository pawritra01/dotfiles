#!/bin/bash

# Define the wallpaper directory
WALLPAPER_DIR="$HOME/Pictures/Wallpapers"

# Check if the directory exists
if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "Error: Directory $WALLPAPER_DIR does not exist."
    exit 1
fi

# Find files (jpg, jpeg, png), pick one at random
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | shuf -n 1)

# Check if a file was actually found
if [ -z "$WALLPAPER" ]; then
    echo "No images found in $WALLPAPER_DIR."
    exit 1
fi

# Apply the wallpaper and color scheme
# awww img handles the display, wal -i handles the colors
matugen image "$WALLPAPER" --source-color-index 0
awww img "$WALLPAPER" 

killall -9 waybar
waybar &

echo "New wallpaper set: $(basename "$WALLPAPER")"
