#!/bin/sh
# lock-screen.sh
# freeze the image and apply grayscale filter
# scrot takes ~0.5s & the conversion other ~0.5s.
# sound effect synchronized
paplay /usr/share/sounds/Yaru/stereo/desktop-logoff.oga &

scrot -o /tmp/lock.png -e 'convert $f -colorspace Gray $f'

# maim -o /tmp/lock.png
# convert /tmp/lock.png -colorspace Gray /tmp/lock.png
i3lock -i /tmp/lock.png
playerctl pause
