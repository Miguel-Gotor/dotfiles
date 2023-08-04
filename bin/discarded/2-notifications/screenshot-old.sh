#!/bin/sh
# screenshot.sh
# Take a screenshot of the entire screen using scrot

msg_tag="screenshot"

directory="$HOME/Pictures/Screenshots"
filename=$(date "+%d-%m-%Y-%T.png")
body="<span font_family='Hack' color='#57dafd' font='14px'>$filename</span>"
# Generate the filename as a Unix epoch timestamp
# filename=$(date +%s).png

dunstify -i video-display -h "string:x-dunst-stack-tag:img" \
"Taking screenshot..."

# Capture the screenshot and save it
scrot "$directory/$filename"

# Display a notification with the filename
dunstify -i $directory/$filename -h "string:x-dunst-stack-tag:img" \
"."
dunstify -i . -h "string:x-dunst-stack-tag:$msg_tag" \
"Screenshot saved as:" "$body"

paplay /usr/share/sounds/freedesktop/stereo/camera-shutter.oga