#!/bin/sh
# One liner command to notify updates in the media player
# Assuming the URL points to a local file, as dunst expects the absolute file path
# file:///home/user/.mozilla/firefox/firefox-mpris/123.png
# Otherwise, the URL must be curled and temporarily stored
# https://i1.ytimg.com/vi/qFfybn_W8Ak/hqdefault.jpg
# temp_file=$(mktemp)
# curl -s $url -o "$temp_file"

playerctl -F metadata mpris:artUrl | while read -r thumbnail; do \
[ -z "$thumbnail" ] ||  dunstify -i $thumbnail -h "string:x-dunst-stack-tag:"mpris"" \
"$(playerctl metadata artist)" "\n<span  color='#0FFFFF' font='18px'>$(playerctl metadata title)</span>"; done