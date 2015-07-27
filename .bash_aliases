##################################
# commands started with...
# s -> some command as sudo
# d -> cd some directory
##################################

# vim as default edit
alias editor="vim"
alias svim="sudo vim"

# map some commands to sudo
if [ $UID -ne 0 ]; then
	alias reboot="sudo reboot"
	alias shutdown="sudo shutdown now"
	alias update="sudo apt-get upgrade"
	alias upgrade="sudo apt-get upgrade"
	alias dist-upgrade="sudo apt-get dist-upgrade"
	alias os-update="sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade"
fi

# make
alias smakei="sudo make install"

# chorme www.someurl.com
alias chrome="google-chrome"

# create parent directories on demand
alias mkdir='mkdir -pv'

# time
alias now='date +"%T"'

##################################
# Navegation
##################################
# a quick way to get out of current directory
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"

# Shortcuts
alias d="cd ~/Documents/"
alias dd="cd ~/Downloads/"
alias dm="cd ~/Music/"
alias dp="cd ~/Pictures"
alias dg="cd ~/Git/"

# commands more interactive
alias rm="rm -i"
alias rd="rmdir"
alias mv="mv -i"
alias cp="cp -i"
# directory listings
alias ll="ls -lF --color=auto"
alias la="ls -alF --color=auto"
alias ls="ls -F"

##################################
#              Vendor
##################################

# simple simple server
alias webserver="python -m SimpleHTTPServer 8000"

# better tree
alias tree="tree -aC -I '.git|node_modules|bower_components' --dirsfirst "$@" | less -FRNX;"

# Kill all the tabs in Chrome to free up memory
# # [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"
