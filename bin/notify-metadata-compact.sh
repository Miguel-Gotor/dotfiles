#!/bin/sh
# This one is intended to be used in conjunction with the C executable version of "inotify-mpris".
# Share tag with other MPRIS notifications since they all carry the same info

dunstify \
-i "$(playerctl metadata mpris:artUrl)" \
-h "string:x-dunst-stack-tag:"mpris"" "$(playerctl metadata artist)"\
"\n<span  color='#0FFFFF' font='18px'>$(playerctl metadata title)</span>"

# If using i3blocks, update media metadata block:
# pkill -SIGRTMIN+10 i3blocks