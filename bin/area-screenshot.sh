#!/bin/sh
# area-screenshot.sh
# Take a screenshot of the selected area
# Click the notification to open the file using the default image viewer
# Unique identifier (name of the script for example)
msg_tag=$(basename $0)

temp_file=$(mktemp /tmp/screenshot-XXX.png)
maim -u -c 1,0,0 -s $temp_file

# scrot -o -s -f $temp_file
cat $temp_file | xclip -selection clipboard -t image/png
dunstify -i $temp_file 'Snippet copied to clipboard' "<a href=\"file://$temp_file\"></a>"
# rm $temp_file
paplay /usr/share/sounds/freedesktop/stereo/message.oga
