export dir=$HOME/.config/rofi


confirm() {
    $(bash "$dir/confirm/confirm.bash" "$1" "$2" "$3")
}

entry() {
    $(bash "$dir/entry/entry.sh" "$1")
}

