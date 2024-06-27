
#oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git ) #zsh-autosuggestions
source $ZSH/oh-my-zsh.sh

#config
[[ -f ~/.zsh/functions ]] && source ~/.zsh/.config/functions
[[ -f ~/.zsh/path ]] && source ~/.zsh/.config/path
[[ -f ~/.zsh/aliases ]] && source ~/.zsh/.config/aliases

#fzf
source /usr/share/doc/fzf/examples/key-bindings.zsh
source /usr/share/doc/fzf/examples/completion.zsh

export FZF_DEFAULT_COMMAND='find . -type f ' #--color=never --hidden
export FZF_DEFAULT_OPTS='--no-height --color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'batcat --color=always --line-range :50 {}'" #--walker-skip .git,node_modules,target 

export FZF_ALT_C_COMMAND='find . -type d ' #--color=never --hidden
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"

