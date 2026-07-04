#!/bin/bash

status=$(wpctl status)

# Extract sink lines: strip leading *, numbers, and whitespace
sinks=$(echo "$status" \
    | sed -n '/Sinks:/,/Sources:/p' \
    | grep -v 'Sources:' \
    | sed 's/^[[:space:]]*//' \
    | sed 's/^[*[:space:]]*//')

chosen=$(echo "$sinks" \
    | tofi --prompt "Audio Output: " \
           --width 400)

# Extract the numeric ID from the chosen line
id=$(echo "$chosen" | grep -oP '^\d+')

if [ -n "$id" ]; then
    wpctl set-default "$id"
    notify-send -a "Audio" "Switched to: $(echo "$chosen" | sed 's/^[0-9]*\. //')"
fi
