#!/bin/sh

# List processes
processes=$(pgrep -l '' | cut -d ' ' -f 2-)

selected_process=$(echo "$processes" | dmenu -i -b -fn 'Dejavu Sans Book:size=11' -nb '#550000' -nf '#FFFFFF' -sb '#FFFFFF' -sf '#000000' | awk '{print $1}')

[ -n "$selected_process" ] && kill $(echo "$selected_process" | awk '{print $1}')

# if [ -n "$selected_process" ]; then
    # confirm=$(echo "Yes\nNo" | dmenu -l 2 -i -b -fn 'Dejavu Sans Book:size=11' -nb '#FF0000' -nf '#FFFFFF' -sb '#FFFFFF' -sf '#000000' -p "Are you sure?")
    # if [ "$confirm" = "Yes" ]; then
        # pid=$(echo "$selected_process" | awk '{print $1}')
            # kill "$pid"
              # fi
              # fi
