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
export CLAS12TAG=4.4.0

# aliases and functions are not exported in subshells
# so sourcing these all the times

source ~/myenv/zconfig.env
source ~/myenv/zaliases.env
source ~/myenv/zfunctions.env

# modules
zmodules=/usr/local/opt/modules/init/zsh

case `hostname -s` in
	ifarm1801|ifarm1801|ifarm1802|ifarm1901)
		zmodules=/group/clas12/packages/setup.sh
		;;
esac

if test -f "$zmodules"; then
	source "$zmodules"
	echo ZSH Modules Loaded
else
	echo "modules are not installed, use brew install modules"
fi



# installed by iterm2
# copied to myenv so it's available at other locations
test -e "${HOME}/myenv/.iterm2_shell_integration.zsh" && source "${HOME}/myenv/.iterm2_shell_integration.zsh"

