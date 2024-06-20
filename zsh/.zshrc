
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

[[-f ~/.zsh/functions]] && source ~/.zsh/functions
[[-f ~/.zsh/path]] && source ~/.zsh/path
[[-f ~/.zsh/aliases]] && source ~/.zsh/aliases
