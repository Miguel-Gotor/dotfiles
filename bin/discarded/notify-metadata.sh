#!/bin/sh
# Notify the metadata of the currently playing media using playerctl and dunstify
# Discarded because the same result can be achieved in one line (see notify-metadata-compact)

# Share tag with other MPRIS notifications since they all carry the same info
msg_tag="mpris"

artist="$(playerctl metadata xesam:artist)"
title="$(playerctl metadata xesam:title)"
thumbnail=$(playerctl metadata mpris:artUrl)

body="\n<span  color='#0FFFFF' font='18px'>"$title"</span>"

# TODO: handle both local file URLs and remote URLs for the thumbnail

dunstify \
-i "$thumbnail" \
-h "string:x-dunst-stack-tag:$msg_tag" "$artist" "$body"
