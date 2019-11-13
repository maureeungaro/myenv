# Path to your oh-my-zsh installation.
export ZSH="/Users/ungaro/.oh-my-zsh"

# Notice: zsh tab completion messes up command line formatting.
# Solution: surround all non-ASCII characters (like emojis) with %{%G<CHARACTER>%}
# PROMPT="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}%{%G➜%} )"
# ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}%{%G✗%}"
ZSH_THEME="robbyrussell"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git)

source $ZSH/oh-my-zsh.sh
source ~/myenv/zaliases.env

# disable sharing history
unsetopt share_history


# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

