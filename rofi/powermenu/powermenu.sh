#!/usr/bin/env bash

LOGOUT=""
LOCK=""
SLEEP=""
REBOOT=""
OFF=""

if [ -z "$1" ] 
then
	echo -e "$LOCK\n$SLEEP\n$LOGOUT\n$REBOOT\n$OFF"
else
	killall rofi
	case $1 in
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
fi


