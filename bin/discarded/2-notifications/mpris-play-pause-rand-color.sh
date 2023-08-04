#!/bin/sh
# mpris-play-pause.sh
# Play and resume player using playerctl
msg_tag="mpris"

#FF00FF # MAGENTA
#2FF924 # LIGHTSABER GREEN
#00FFFF # CYAN


if playerctl status >/dev/null 2>&1; then

    rand_num=$(shuf -i 1-3 -n 1)
    case $rand_num in
            1) color='#00ffff' ;;     # Magenta
            2) color='#2FF924' ;;     # Lightsaber Green
            3) color='#00FFFF' ;;     # Cyan

    esac
    
    artist="$(playerctl metadata artist)"
    title="$(playerctl metadata title)"

    # Lazy evaluation
    [ "$(playerctl status)" = "Playing" ] &&
        # If "Playing," execute the 1st cmd, and skip the 2nd
        body="<span  color='#a6a6a6' font='18px'>"$title"</span>" \
        ||
        # If "Paused" skip the 1st cmd, execute the 2nd.
        body="<span  color='$color' font='18px'>"$title"</span>"
    # Display album cover art thumbnail
    dunstify \
    -i $(playerctl metadata mpris:artUrl) -h "string:x-dunst-stack-tag:$msg_tag" "$artist" "\n$body"

    playerctl play-pause
fi