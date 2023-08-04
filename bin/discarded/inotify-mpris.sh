#!/bin/sh

# Discarded because a faster executable can be achieved using the C library
# "sys/inotify.h", leaving the notification to a separate script

# The result in both cases is the same: set up an event listener that waits for
# the creation of the 'firefox-mpris' directory within the Firefox directory.
# This folder temporarily stores the thumbnail of the currently playing media.
# When a new media starts playing, the script sends a notification using dunst
# with the metadata of the song: name, artist, album cover...
# However, this approach always misses the 1st media metadata because the 
# "firefox-mpris" dir is already created by then

# Share tag with other MPRIS notifications since they all carry the same info
msg_tag="mpris"

dir1="$HOME/.mozilla/firefox/"

while inotifywait -e create "$dir1"; do

    artist="$(playerctl metadata artist)"
    title="$(playerctl metadata title)"
    body="<span  color='#0FFFFF' font='18px'>"$title"</span>"

    dunstify \
    -i $(playerctl metadata mpris:artUrl) \
    -h "string:x-dunst-stack-tag:$msg_tag" "$artist" "\n$body"
done