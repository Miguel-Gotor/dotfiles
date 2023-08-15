#!/bin/sh
# Bindsym to key $mod+p (player)
# We can also call this script on notification click.
# See "notify-metadata-action.sh"
dbus-send --type=method_call \
             --dest=org.mpris.MediaPlayer2.playerctld \
             /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Raise