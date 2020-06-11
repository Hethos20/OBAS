#!/bin/bash

option1="📴 Shutdown"
option2="💤 Sleep"
option3="🔃 Reboot"
option4="🔒 Lock"
options="$option1\n$option2\n$option3\n$option4"

choice=$(echo -e "$options" | rofi -font "DejaVu Sans Mono 20" -width 30 -lines 4 -dmenu -p "POWER: ")

#[[ -z $choice ]] && exit
case "${choice}" in
        $option1)
                shutdown -P 0 ;;
        $option2)
                systemctl suspend ;;
        $option3)
                reboot ;;
        $option4)
                dm-tool lock ;;
esac
