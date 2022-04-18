#!/usr/bin/env bash
source "$HOME/.config/rofi/includes.bash"

LOGOUT=""
LOCK=""
SLEEP=""
HIBERNATE=""
REBOOT=""
OFF=""


dir=/home/sean/.config/rofi
result=$(echo -e "$LOCK\n$SLEEP\n$HIBERNATE\n$LOGOUT\n$REBOOT\n$OFF" | \
	rofi -theme $dir/powermenu/powermenu.rasi -dmenu -p "Up $(uptime -p | cut -c4-)")

case $result in
	$LOCK)
		swaylock
		;;
	$HIBERNATE)
		systemctl hibernate
		;;
	$SLEEP)
		systemctl suspend
		;;
	$LOGOUT)
		confirm "swaymsg exit" "" "Exit Sway?"
		;;
	$REBOOT)
		confirm "systemctl reboot" "" "Reboot?"
		;;
	$OFF)
		confirm "systemctl poweroff" "" "Shutdown?"
		;;
	*)
		;;
esac