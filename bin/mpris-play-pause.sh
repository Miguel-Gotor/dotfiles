#!/bin/sh
# mpris-play-pause.sh
# Play and resume player using playerctl, and notify the current status along basic metadata

msg_tag="mpris"

if playerctl_status="$(playerctl status 2>/dev/null)"; then

    playerctl play-pause

    # Retrieve metadata
    artist="$(playerctl metadata artist)"
    title="$(playerctl metadata title)"
    
    # Album cover art thumbnail
    icon="$(playerctl metadata mpris:artUrl)"

    # Lazy evaluation
    [ "$playerctl_status" = "Playing" ] &&
        # If "Playing," execute the 1st cmd, and skip the 2nd
        # Light gray
        body="<span  color='#A6A6A6' font='18px'>"$title"</span>" \
        ||
        # If "Paused" skip the 1st cmd, execute the 2nd.
        # Yellow
        body="<span  color='#0FFFFF' font='18px'>"$title"</span>"

    # Notification
    dunstify \
    -i $icon -h "string:x-dunst-stack-tag:$msg_tag" "$artist" "\n$body"
fi