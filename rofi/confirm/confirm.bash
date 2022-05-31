source "$HOME/.config/rofi/includes.bash"

YES=""
NO=""

result=$(echo -e "$YES\n$NO" | \
    rofi -theme $dir/confirm/confirm.rasi -dmenu -p "${3:-"Are You Sure?"}")

case $result in
    $YES)
        eval "$1"
        ;;
    $NO)
        eval "$2"
        ;;
    *)
        ;;
esac