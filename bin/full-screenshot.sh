#!/bin/sh
# full-screenshot.sh
# Take a screenshot of the entire screen using scrot

# Unique identifier (name of the script for example)
msg_tag=$(basename $0)

directory="$HOME/Pictures/Screenshots"
filename=$(date "+%d-%m-%Y-%T.png")
path="$directory/$filename"
body="<span font_family='Hack' color='#57dafd' font='14px'>$filename</span>"

dunstify \
    -i video-display \
    -h "string:x-dunst-stack-tag:img" \
    "Taking screenshot..." &

maim -o $file"

# Notification
dunstify \
    -i $directory/$filename \
    -h "string:x-dunst-stack-tag:$msg_tag" \
    "Screenshot saved as:" "$body" \
    "<a href=\"file://$path\"></a>"

paplay /usr/share/sounds/freedesktop/stereo/camera-shutter.oga &
