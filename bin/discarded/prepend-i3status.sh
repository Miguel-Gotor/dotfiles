#!/bin/sh
# shell script to display song metadata in i3status according to:
# Discarded because output formatting (coloring) is lost
i3status  --config ~/.config/i3status/conf | while :
do
        read line
        metadata=$(echo "♪ $(playerctl metadata xesam:artist) | $(playerctl metadata xesam:title)")
        echo "$metadata | $line" || exit 1
done
