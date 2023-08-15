#!/bin/sh
echo $(xrandr --verbose | grep "$display" -A 5 | grep "Brightness" | awk '{print $2}')