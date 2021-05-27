#!/usr/bin/bash

LOGOUT=""
SLEEP=""
LOCK=""
REBOOT=""
OFF=""

choice=$(echo -e "$LOGOUT\n$LOCK\n$SLEEP\n$REBOOT\n$OFF" | rofi -dmenu -config ~/.config/rofi/old/power.rasi)


case $choice in
	$LOGOUT)
		i3-msg exit
		;;
	$LOCK)
		lock
		;;
	$SLEEP)
		lock --sleep
		;;
	$REBOOT)
		systemctl reboot
		;;
	$OFF)
		systemctl poweroff
		;;
	*)
		;;
esac
