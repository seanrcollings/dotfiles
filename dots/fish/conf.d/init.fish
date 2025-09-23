source ~/.asdf/asdf.fish

direnv hook fish | source
starship init fish | source
zoxide init --cmd=cd fish | source

function __fish_command_not_found_handler --on-event fish_command_not_found
    echo "fish: Unknown command '$argv'"
end
