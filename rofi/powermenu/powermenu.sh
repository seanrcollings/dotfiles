#!/usr/bin/env bash

LOGOUT=""
LOCK=""
SLEEP=""
HIBERNATE=""
REBOOT=""
OFF=""

if [ -z "$1" ] 
then
	echo -e "$LOCK\n$SLEEP\n$HIBERNATE\n$LOGOUT\n$REBOOT\n$OFF"
else
	killall rofi
	case $1 in
		$LOGOUT)
			swaymsg exit
			;;
		$LOCK)
			swaylock
			;;
		$HIBERNATE)
			systemctl hibernate
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


