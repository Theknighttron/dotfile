#!/bin/bash
# Script to set random background wallpaper on dwm with keybindings

# Set base path for wallpapers
wallpaper_path="/home/polyhistor/Pictures/wallpapers"

# Enable nullglob to prevent issues if no files are found
shopt -s nullglob

# Store all the image file names in wallpapers array
wallpapers=(
    "$wallpaper_path"/*.jpg
    "$wallpaper_path"/*.jpeg
    "$wallpaper_path"/*.png
    "$wallpaper_path"/*.bmp
    "$wallpaper_path"/*.svg
)

# Get array size
wallpapers_size=${#wallpapers[*]}

# Function to set wallpaper
set_wallpaper() {
    feh --bg-fill "$1"
}

# Set initial wallpaper
index=$(( RANDOM % wallpapers_size ))
set_wallpaper "${wallpapers[index]}"

# Function to go to the next wallpaper
next_wallpaper() {
    index=$(( (index + 1) % wallpapers_size ))
    set_wallpaper "${wallpapers[index]}"
}

# Function to go to the previous wallpaper
prev_wallpaper() {
    index=$(( (index - 1 + wallpapers_size) % wallpapers_size ))
    set_wallpaper "${wallpapers[index]}"
}

# Main loop for automatic wallpaper change
while true; do
    # Change wallpaper every 6 minutes
    sleep 6m
    next_wallpaper
done &

# Keybindings for navigating through images
while true; do
    # Listen for keypress events
    read -rsn1 input

    # If "n" is pressed, move to the next wallpaper
    if [[ $input == "n" ]]; then
        next_wallpaper

    # If "p" is pressed, move to the previous wallpaper
    elif [[ $input == "p" ]]; then
        prev_wallpaper
    fi
done

