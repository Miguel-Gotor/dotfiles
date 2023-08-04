#!/bin/sh
# mpris-play-pause.sh
# Play and resume player using playerctl

msg_tag="mpris"

if playerctl status >/dev/null 2>&1; then

    # Display album cover art thumbnail
    dunstify \
    -i $(playerctl metadata mpris:artUrl) \
    -h "string:x-dunst-stack-tag:icon" "."

    # Lazy evaluation
    [ "$(playerctl status)" = "Playing" ] &&
        # If "Playing," execute the 1st cmd, and skip the 2nd
        dunstify \
        -i /usr/share/icons/ePapirus-Dark/22x22/actions/gtk-media-pause.svg \
        -h "string:x-dunst-stack-tag:$msg_tag" \
        "$(playerctl metadata artist)" \
        "$(playerctl metadata title)" \
        ||
        # If "Paused" skip the 1st cmd, execute the 2nd.
        dunstify \
        -i /usr/share/icons/ePapirus-Dark/22x22/actions/gtk-media-play-ltr.svg \
        -h "string:x-dunst-stack-tag:$msg_tag" \
        "$(playerctl metadata artist)" \
        "$(playerctl metadata title)"

    playerctl play-pause
fi