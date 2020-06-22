# ZSH settings
# For a list of all settings: showZshOptions
# setopt by itself will also show the current settings
# to unset: unsetopt

# current defaults:
# histignoredups: prevents the current line from being saved in the history if it is the same as the previous one
# interactive
# monitor: Allow job control. ?
# shinstdin
# zle


export ISMAURIWORK=0
export JLAB_VERSION=devel
export CLAS12TAG=4.3.2

# aliases and functions are not exported in subshells
# so sourcing these all the times

source ~/myenv/zconfig.env
source ~/myenv/zaliases.env
source ~/myenv/zfunctions.env

# modules
zmodules=/usr/local/opt/modules/init/zsh
if test -f "$zmodules"; then
	source /usr/local/opt/modules/init/zsh
	echo ZSH Modules Loaded
else
	echo "modules are not installed, use brew install modules"
fi



