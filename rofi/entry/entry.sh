source "$HOME/.config/rofi/includes.bash"

result=$(rofi -theme $dir/entry/entry.rasi -dmenu -p "$1")

echo $result