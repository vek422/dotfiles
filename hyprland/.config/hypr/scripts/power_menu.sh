#!/bin/bash

chosen=$(echo -e "⏻ Shutdown\n↻ Reboot\n⏾ Logout\n⏾ Suspend\n🔒 Lock" \
    | tofi --prompt "Power: " \
           --width 300)

case "$chosen" in
    *Shutdown) systemctl poweroff ;;
    *Reboot)   systemctl reboot ;;
    *Logout)   hyprctl dispatch exit ;;
    *Suspend)  systemctl suspend ;;
    *Lock)     hyprlock ;;
esac
