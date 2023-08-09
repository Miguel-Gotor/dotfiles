#!/bin/sh
# new-workspace.sh
# Create a new workspace next to the highest one

# V1: From user https://github.com/sandeel
i3-msg workspace $(($(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sort -rn | head -1) + 1))

# V2: Using jq (much slower tho)
# i3-msg "workspace $(i3-msg -t get_workspaces | jq 'max_by(.num).num + 1')"

