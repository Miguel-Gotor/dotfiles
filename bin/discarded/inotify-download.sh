#!/bin/sh

dir1="$HOME/Downloads"
msg_tag=$0

while inotifywait -e create "$dir1"; do

    body="<span  color='#0FFFFF' font='18px'>"$0"</span>"

    dunstify \
    -i /usr/share/icons/breeze-dark/places/symbolic/folder-download-symbolic.svg \
    -h "string:x-dunst-stack-tag:$msg_tag" "Download complete" "\n$body"
done