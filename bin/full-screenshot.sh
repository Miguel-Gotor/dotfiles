#!/bin/sh
# full-screenshot.sh
# Take a screenshot of the entire screen using scrot
# Unique identifier (name of the script for example)
msg_tag=$0

directory="$HOME/Pictures/Screenshots"
filename=$(date "+%d-%m-%Y-%T.png")
body="<span font_family='Hack' color='#57dafd' font='14px'>$filename</span>"

# Generate the filename as a Unix epoch timestamp
# filename=$(date +%s).png

dunstify -i video-display -h "string:x-dunst-stack-tag:img" \
"Taking screenshot..."

scrot "$directory/$filename"

# Notification
dunstify -i $directory/$filename -h "string:x-dunst-stack-tag:$msg_tag" \
"Screenshot saved as:" "$body"

paplay /usr/share/sounds/freedesktop/stereo/camera-shutter.oga