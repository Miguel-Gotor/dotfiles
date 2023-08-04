#!/bin/sh
# adjust-brightness.sh
# Change monitor brightness to an extent (50% - 150%)
# TODO: There is room for improvement regarding the responsivity. Too many arithmetic operations, prob can be simplified.

# Only one instance of the xrandr command for adjusting brightness is executed at a time. Avoids race conditions.
pgrep -x xrandr && exit

# Unique identifier (name of the script for example)
msg_tag=$0
display="HDMI-1"
increment="$1"

# Note that xrandr rounds precision to 1 decimal place for brightness values > 1
# So increments beyond 100% must be of 10%
curr_brightness=$(xrandr --verbose | grep "$display" -A 5 | grep "Brightness" | awk '{print $2}')
new_brightness=$(echo "$curr_brightness + $increment" | bc)

# Keep the brightness within the valid range
if [ "$(echo "$new_brightness < 0.5" | bc -l)" -eq 1 ]; then
    new_brightness=0.5
elif [ "$(echo "$new_brightness > 1.5" | bc -l)" -eq 1 ]; then
    new_brightness=1.5
fi

xrandr --output "$display" --brightness "$new_brightness"
pct_brightness=$(awk -v new="$new_brightness" 'BEGIN { printf "%.0f", new * 100 }')

# Select an icon based on the current value
if [ $pct_brightness -gt 125 ]; then
    icon=/usr/share/icons/Papirus-Dark/symbolic/status/display-brightness-high-symbolic.svg
elif [ $pct_brightness -gt 100 ]; then
    icon=/usr/share/icons/Papirus-Dark/symbolic/status/display-brightness-medium-symbolic.svg
elif [ $pct_brightness -gt 75 ]; then
    icon=/usr/share/icons/Papirus-Dark/symbolic/status/display-brightness-low-symbolic.svg
else
    icon=/usr/share/icons/Papirus-Dark/symbolic/status/display-brightness-off-symbolic.svg
fi

# Notification
dunstify -a "adjustBrightness" -i "$icon" -h "string:x-dunst-stack-tag:$msg_tag" \
    -h "int:value:$(($pct_brightness - 50))" "Brightness: $pct_brightness%"

# pkill -SIGRTMIN+8 i3blocks