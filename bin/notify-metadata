#!/bin/sh
# notify-metadata-simple.sh
# Standalone notification, does nothing per se. 
# Should be called on player metadata update
# Shares tag with other MPRIS notifications since they all carry the same info

dunstify -i $(playerctl metadata mpris:artUrl) -h "string:x-dunst-stack-tag:"mpris"" \
"$(playerctl metadata artist)" "\n<span  color='#0FFFFF' font='18px'>$(playerctl metadata title)</span>";