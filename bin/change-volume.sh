#!/bin/sh
# change-volume.sh
# Change volume using PulseAudio
# Unique identifier (name of the script for example)
msg_tag=$0

# pactl list sinks | grep '^[[:space:]]Volume:' | \
#     head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'

# Shorter alternative:
curr_volume=$(pactl list sinks | awk '$1 == "Volume:" {gsub(/%/, ""); print $5}')
new_volume=$((curr_volume + $1))

# Make sure the new volume doesn't exceed 100
new_volume=$((new_volume > 100 ? 100 : new_volume))

# Set icon based on volume level
if [ $new_volume -le 0 ]; then
    new_volume=0
    icon=audio-volume-muted-symbolic
elif [ $new_volume -gt 66 ]; then
    icon=audio-volume-high-symbolic
elif [ $new_volume -gt 33 ]; then
    icon=audio-volume-medium-symbolic
elif [ $new_volume -gt 0 ]; then
    icon=audio-volume-low-symbolic
fi

# Notification
pactl set-sink-volume @DEFAULT_SINK@ "$new_volume%"
dunstify -a "changeVolume" -i "$icon" -h "string:x-dunst-stack-tag:$msg_tag" \
    -h "int:value:$new_volume" "Volume: ${new_volume}%"
