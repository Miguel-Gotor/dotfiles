#!/bin/sh
# calendar.sh
# Notify current date in calendar using "cal"
# Unique identifier (name of the script for example)
# Color today's date in yellow
# Use word boundaries in the regular expression to ensure that only the 
# standalone day of the month is matched, preventing partial matching of day
# numbers like 1 in 11, 12...

cal=$(cal)
highlighted_output=$(echo "$cal" | sed "s/\b$(date +%e | sed 's/ //g')\b/<span color='yellow'>\\0<\/span>/")

dunstify -i /usr/share/icons/breeze-dark/apps/48/office-calendar.svg \
        -h "string:x-dunst-stack-tag:$0" \
        "Calendar" "\n<span font_family='Hack' font='15px'>$highlighted_output\n</span>"