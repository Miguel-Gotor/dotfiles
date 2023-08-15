#!/bin/sh
# V1
# pactl list sinks | grep '^[[:space:]]Volume:' | \
# head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'

# V2 (shorter and with '%'')
echo $(pactl list sinks | awk '$1 == "Volume:" {gsub(/%/, ""); print $5}')%