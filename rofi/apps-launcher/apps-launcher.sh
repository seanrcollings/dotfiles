#!/usr/bin/env bash
source "$HOME/.config/rofi/includes.bash"

CODE=" "
BROWSER=" "
MUSIC=""
TERMINAL=" "
NOTES=""


dir=/home/sean/.config/rofi
result=$(echo -e "$CODE\n$TERMINAL\n$BROWSER\n$MUSIC\n$NOTES" | \
	rofi -theme $dir/apps-launcher/apps-launcher.rasi -dmenu -p "Most Used")

case $result in
	$CODE)
		code
		;;
	$BROWSER)
		google-chrome-stable
		;;
	$MUSIC)
		/opt/google/chrome/google-chrome --profile-directory=Default --app-id=cinhimbnkkaeohfgghhklpknlkffjgod
		;;
	$TERMINAL)
		alacritty
		;;
	$NOTES)
        obsidian
		;;
	*)
		;;
esac