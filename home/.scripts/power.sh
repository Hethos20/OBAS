#!/bin/bash

choice=$(echo "shutdown
sleep 
restart" | rofi -dmenu -p "POWER: ")

#[[ -z $choice ]] && exit
case "${choice}" in
	"shutdown")
		shutdown -P 0 ;;
	"suspend")
		systemctl suspend ;;
	"restart")
		reboot ;;
	"test")
		echo "test";;
esac
