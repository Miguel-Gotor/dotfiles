#!/bin/sh
# v1 (From user https://github.com/sandeel)
i3-msg workspace $(($(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sort -rn | head -1) + 1))

# v2 using jq (much slower tho)
# i3-msg "workspace $(i3-msg -t get_workspaces | jq 'max_by(.num).num + 1')"

