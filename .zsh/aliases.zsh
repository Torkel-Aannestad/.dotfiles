alias my_ip="ip address | grep -o \"inet 172.*/\" | awk '{ print \$2 }' | tr / ' ' | xargs"
alias python="python3"

alias ls="eza --icons --group-directories-first"
alias ll="eza --icons --group-directories-first -l"

alias c="$HOME/code-wsl/"
