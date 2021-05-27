#!/usr/bin/env bash

DETERMINE="  Auto Detect"
LAPTOP="  Laptop"
CLAMSHELL="  Docked"
ARANDR="  Arandr"


choice=$(echo -e "$DETERMINE\n$LAPTOP\n$CLAMSHELL\n$ARANDR" | rofi -dmenu -theme /home/sean/.config/rofi/themes/setup.rasi)


case $choice in
	$LAPTOP)
		autorandr laptop
		;;
	$CLAMSHELL)
		autorandr clamshell
		;;
	$ARANDR)
		arandr
		;;
	$DETERMINE)
		autorandr --change --force
		;;
	*)
		echo $choice
		;;
esac

