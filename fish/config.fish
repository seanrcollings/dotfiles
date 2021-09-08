source ~/.asdf/asdf.fish
source ~/.config/fish/functions/custom.fish

direnv hook fish | source
starship init fish | source

function __fish_command_not_found_handler --on-event fish_command_not_found
    echo "fish: Unknown command '$argv'"
end
