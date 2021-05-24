#!/usr/bin/bash

LOGOUT=""
LOCK=""
SLEEP=""
REBOOT=""
OFF=""

choice=$(echo -e "$LOCK\n$SLEEP\n$LOGOUT\n$REBOOT\n$OFF" | wofi --dmenu --conf ~/.config/wofi/powermenu/config --style ~/.config/wofi/powermenu/style.css)


case $choice in
	$LOGOUT)
		swaymsg exit
		;;
	$LOCK)
		swaylock
		;;
	$SLEEP)
		systemctl suspend
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
