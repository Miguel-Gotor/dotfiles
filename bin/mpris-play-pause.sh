#!/bin/sh
# mpris-play-pause.sh
# Play and resume player using playerctl
# Share tag with other MPRIS notifications since they all carry the same info
# Notify the current status along basic metadata
# Lazy eval:
# If it was "Playing", it has been paused: dull color
# If it was "Paused", it is now playing: bright color

msg_tag="mpris"
playerctl play-paus
if playerctl_status="$(playerctl status 2>/dev/null)"; then

    pkill -SIGRTMIN+2 i3blocks
    # Retrieve metadata
    artist="$(playerctl metadata artist)"
    title="$(playerctl metadata title)"
    icon="$(playerctl metadata mpris:artUrl)"

    [ "$playerctl_status" = "Playing" ] &&
        # Light gray
        body="<span  color='#A6A6A6' font='18px'>"$title"</span>" ||
        # Yellow
        body="<span  color='#0FFFFF' font='18px'>"$title"</span>"

    # Notification
    dunstify \
    -i $icon -h "string:x-dunst-stack-tag:$msg_tag" "$artist" "\n$body"
fi
