#!/bin/sh
dbus-send --type=method_call \
             --dest=org.mpris.MediaPlayer2.playerctld \
             /org/mpris/MediaPlayer2 org.mpris.MediaPlayer2.Raise