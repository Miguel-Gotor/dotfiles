#!/bin/sh
# night-light.sh
# Reduce blue gamma for nightly usage using xrandr
# Unique identifier (name of the script for example)

msg_tag=$(basename $0)
current_gamma=$(xrandr --verbose | awk '/Gamma/ {print $2}')
blue_gamma=${current_gamma##*:}

if [ $blue_gamma = 1.0 ]
then
    xrandr --output HDMI-1 --gamma 1:0.95:0.8 --brightness 0.9
    dunstify -i /usr/share/icons/Papirus/16x16/panel/weather-clear-night-000.svg \
    -h "string:x-dunst-stack-tag:$msg_tag" "Night light ON"
    paplay /usr/share/sounds/Yaru/stereo/bell.oga
else
    xrandr --output HDMI-1 --gamma 1:1:1
    dunstify -i /usr/share/icons/Papirus-Light/16x16/panel/weather-clear-night-000.svg \
    -h "string:x-dunst-stack-tag:$msg_tag" "Night light OFF"
    paplay /usr/share/sounds/freedesktop/stereo/window-attention.oga
fi  
