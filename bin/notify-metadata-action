#!/bin/sh
# notify-metadata-action.sh
# Should be called on player metadata update
# Share tag with other MPRIS notifications since they all carry the same info
# Click notification to "raise" (focus) the current player via dbus method call
# Lazy eval: If notification is clicked, do the thing
# Else, exit with 0 code.

[  "$(dunstify -A 0,OPEN \
-i  $(playerctl metadata mpris:artUrl) \
-h  "string:x-dunst-stack-tag:"mpris"" \
    "$(playerctl metadata artist)" \
    "\n<span  color='#0FFFFF' font='18px'> \
    $(playerctl metadata title)</span>";)" = "0" ] && 
    
    dbus-send --type=method_call \
             --dest=org.mpris.MediaPlayer2.playerctld \
             /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Raise ||

    exit 0