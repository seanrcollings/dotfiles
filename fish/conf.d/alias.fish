alias chrome="google-chrome-stable"
alias be="bundle exec"
alias ber="bundle exec rake"
alias ssy="sudo systemctl"
alias gls="/usr/bin/ls"
alias ls="logo-ls"
alias ll="logo-ls -lh"
alias djm="./manage.py"
alias pr="poetry run"

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

alias ssh="env TERM=xterm ssh $argv"
