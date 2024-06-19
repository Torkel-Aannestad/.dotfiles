# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

[[-f ~/.zsh/path.zsh]] && source ~/.zsh/path.zsh
[[-f ~/.zsh/aliases.zsh]] && source ~/.zsh/aliases.zsh
[[-f ~/.zsh/functions.zsh]] && source ~/.zsh/functions.zsh
