#!/bin/sh
# area-screenshot.sh
# Take a screenshot of the selected area

# Unique identifier (name of the script for example)
msg_tag=$0

temp_file=$(mktemp /tmp/screenshot-XXX.png)
maim -u -c 1,1,1 -s $temp_file
cat $temp_file | xclip -selection clipboard -t image/png
dunstify -i $temp_file 'Snippet copied to clipboard' "<a href=\"file://$temp_file\"></a>"
# rm $temp_file
paplay /usr/share/sounds/freedesktop/stereo/message.oga
