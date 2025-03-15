function ef
    if count $argv > /dev/null
        $EDITOR ~/.config/fish/conf.d/{$argv}.fish
    else
        echo "file do you want to edit?"
    end
end
