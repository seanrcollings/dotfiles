#!/usr/bin/env bash
source "$HOME/.config/rofi/includes.bash"

EMAIL=""
GITHUB=" "
WORK="華"
TERMINAL=" "
NOTES=""


dir=/home/sean/.config/rofi
result=$(echo -e "$EMAIL\n$GITHUB\n$WORK" | \
	rofi -theme $dir/sites-launcher/sites-launcher.rasi -dmenu -p "Most Used")

case $result in
	$EMAIL)
		xdg-open https://mail.google.com
		;;
	$GITHUB)
		xdg-open https://github.com
		;;
	$WORK)
		xdg-open https://atomicjolt.instructure.com
		;;
	*)
		;;
esac