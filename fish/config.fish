set current_tty 
if status --is-login
    and  test (tty) = "/dev/tty1"
    # Fixes an issue with xdg-portal not working properly on startup
    dbus-update-activation-environment --systemd DBUS_SESSION_BUS_ADDRESS DISPLAY XAUTHORITY
    sway
end

set -x PATH "/home/sean/.local/bin:$PATH"
set fish_greeting
set VIRTUAL_ENV_DISABLE_PROMPT disable
set -x EDITOR "/usr/bin/micro"
set -x VISUAL "/usr/bin/micro"
#set -x RUBYOPT "-W:no-deprecated -W:no-experimental" # Older rails versions might blow up
set -x AUTOENV_ENABLE_LEAVE "true"
set -e ASDF_PYTHON_VERSION # What is even setting this?
#
source ~/.asdf/asdf.fish
source ~/.config/fish/activate.fish
source ~/.config/fish/functions/custom.fish

alias chrome="google-chrome-stable"
alias be="bundle exec"
alias ber="bundle exec rake"
alias rf="source ~/.config/fish/config.fish" # reloads the fish config
alias ssy="sudo systemctl"
alias ef="$EDITOR ~/.config/fish/config.fish"
alias gls="/usr/bin/ls"
alias ls="logo-ls"
alias ll="logo-ls -lh"
alias djm="./manage.py"
alias pr="poetry run"

# Git Aliases
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias ga="git add"
alias gaa="git add ."
alias gco="git commit"
alias gch="git checkout"
alias gpl="git pull"
alias gps="git push"

alias m="micro"

direnv hook fish | source

function __fish_command_not_found_handler --on-event fish_command_not_found
    echo "fish: Unknown command '$argv'"
end

starship init fish | source
