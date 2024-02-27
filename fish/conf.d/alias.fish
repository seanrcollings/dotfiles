alias chrome="google-chrome-stable"
alias be="bundle exec"
alias ber="bundle exec rake"
alias ssy="sudo systemctl"
alias gls="/usr/bin/ls"
alias ls="logo-ls"
alias ll="logo-ls -lh"
alias djm="./manage.py"
alias pr="poetry run"
alias pick-color="grim -g (slurp -p) -t ppm - | convert - -format '%[pixel:p{0,0}]' txt:-"

# Git Aliases
alias ghs="/usr/bin/gs"
alias gs="git status"
alias gd="git diff"
alias gb="git branch"
alias ga="git add"
alias gaa="git add ."
alias gco="git commit"
alias gch="git checkout"
alias gpl="git pull"
alias gps="git push"
alias gl="git log"

alias m="micro"
alias vpns="openvpn3 session-start --config aj"
alias vpnc="openvpn3 session-manage -D --config aj"

alias kc="kubectl"

function rf
    source ~/.config/fish/config.fish
    for file in ~/.config/fish/conf.d/*
         source $file
     end
end


function ef
    if count $argv > /dev/null
        $EDITOR ~/.config/fish/conf.d/{$argv}.fish
    else
        $EDITOR ~/.config/fish/config.fish
    end
end

