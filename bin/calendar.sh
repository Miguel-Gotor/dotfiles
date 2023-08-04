#!/bin/sh
# calendar.sh
# Highlight current date in calendar using "cal"
# Unique identifier (name of the script for example)
msg_tag=$0

# Uncolored calendar output
cal=$(cal)

# Highlight the current in yellow
# Use word boundaries in the regular expression to ensure that only the 
# standalone day of the month is matched, preventing partial matching of day numbers like 1 in 11, 12...
highlighted_output=$(echo "$cal" | sed "s/\b$(date +%e | sed 's/ //g')\b/<span color='yellow'>\\0<\/span>/")

# Notification
dunstify -i /usr/share/icons/breeze-dark/apps/48/office-calendar.svg -h "string:x-dunst-stack-tag:$msg_tag" \
"Calendar" "\n<span font_family='Hack' font='15px'>$highlighted_output\n</span>"