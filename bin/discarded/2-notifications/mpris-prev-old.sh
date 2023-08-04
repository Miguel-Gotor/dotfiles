#!/bin/sh
# mpris-next.sh
# Select next song using playerctl
msg_tag="mpris"

if playerctl status >/dev/null 2>&1; then

    current_icon="$(playerctl metadata mpris:artUrl)"
    playerctl previous

    # Wait until either the icon changes AND the new icon becomes available (non-empty value)
    while [ "$(playerctl metadata mpris:artUrl)" = "$current_icon" ] || [ -z "$(playerctl metadata mpris:artUrl)" ]; do
        sleep 0.1
    done

    # Display new metadata once it's fully loaded (icon is almost always the last one)
    dunstify \
    -i $(playerctl metadata mpris:artUrl) \
    -h "string:x-dunst-stack-tag:icon" "."

    dunstify \
    -i /usr/share/icons/ePapirus-Dark/22x22/actions/gtk-media-forward-rtl.svg \
    -h "string:x-dunst-stack-tag:$msg_tag" \
    "$(playerctl metadata artist)" \
    "$(playerctl metadata title)"
fi