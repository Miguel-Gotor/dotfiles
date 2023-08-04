#!/bin/sh
# mpris-prev.sh
# Select previous song using playerctl, and notify the current status along basic metadata

msg_tag="mpris"

if playerctl status >/dev/null 2>&1; then

    current_icon="$(playerctl metadata mpris:artUrl)"
    playerctl previous

    # Wait until either the icon changes AND the new icon becomes available (non-empty value)
    while [ "$(playerctl metadata mpris:artUrl)" = "$current_icon" ] || [ -z "$(playerctl metadata mpris:artUrl)" ]; do
        sleep 0.1
    done

    artist="$(playerctl metadata artist)"
    title="$(playerctl metadata title)"
    body="<span  color='#0FFFFF' font='18px'>"$title"</span>"

    # Display new metadata once it's fully loaded (icon is almost always the last one)
    dunstify \
    -i $(playerctl metadata mpris:artUrl) -h "string:x-dunst-stack-tag:$msg_tag" "$artist" "\n$body"
fi