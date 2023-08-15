#!/bin/sh

# V1. Use JetBrains ligatures
# [ "$(playerctl status)" = "Playing" ] && echo $(playerctl metadata xesam:artist) "|>" $(playerctl metadata xesam:title) || echo $(playerctl metadata xesam:artist) "||" $(playerctl metadata xesam:title)

# V2. Use FontAwesome icons:
[ "$(playerctl status)" = "Playing" ] && echo " " $(playerctl metadata xesam:artist) - $(playerctl metadata xesam:title) || echo " " $(playerctl metadata xesam:artist) - $(playerctl metadata xesam:title)