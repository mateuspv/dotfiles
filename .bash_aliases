##################################
# Bashstuffs
##################################

##################################
# Editor
###################################
alias editor="vim"
alias svim="sudo vim"
alias tmux="TERM=screen-256color-bce tmux"

##################################
# Commands
###################################
# map some commands to sudo
if [ $UID -ne 0 ]; then
	alias reboot="sudo reboot"
	alias shutdown="sudo shutdown now"
	alias update="sudo apt-get upgrade"
	alias upgrade="sudo apt-get upgrade"
	alias dist-upgrade="sudo apt-get dist-upgrade"
	alias os-update="sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y"
fi

# chorme www.someurl.com
alias chrome="google-chrome"

# create parent directories on demand
alias mkdir='mkdir -pv'

# time
alias now='date +"%T"'

# simple simple server
alias webserver="python -m SimpleHTTPServer 8000"

# better tree
alias tree="tree -aC -I '.git|node_modules|bower_components' --dirsfirst "$@" | less -FRNX;"

##################################
# Navegation
##################################
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias -- -="cd -" # Go back

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
alias ls="command ls --color"
alias ll="ls -lF --color=auto"
alias la="ls -alF --color=auto"
alias ls="ls -F"

##################################
# Bundler
##################################
alias b="bundle"
alias be="bundle exec"
alias bi="b install --path vendor"
alias bl="bundle list"
alias bu="bundle update"
alias bp="bundle package"
alias binit="bi && bp && echo 'vendor/ruby' >> .gitignore"

##################################
# Rails
##################################
alias r='rails'
alias rg='rails g'
alias rs='rails s'
alias rc='rails c'
alias rn='rails new'
alias rd='rails dbconsole'
alias rp='rails plugin'
alias ra='rails application'
alias rd='rails destroy'

##################################
# Rake
##################################
alias rt='rake test'
alias rtu='rake test:units'
alias rtf='rake test:functionals'
alias rti='rake test:integration'
alias rr='rake routes'
alias rdbm='rake db:migrate'
alias rdbr='rake db:rollback'

##################################
# Git
##################################
alias g='git'
alias gcl='git clone'
alias ga='git add'
alias gaa='git add .'
alias gs='git status'
alias gss='git status -s'
alias gg='git status'
alias ggg='git status -s'
alias gl='git pull'
alias pull='git pull'
alias gup='git fetch && git rebase'
alias gp='git push'
alias push='git push'
alias gpp='git pull && git push'
alias gpo='git push origin'
alias gd='git diff'
alias gdd='git diff --cached'
alias gdw='git diff --color-words'
alias gdt='git difftool'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcom='git commit'
alias com='git commit'
alias gb='git branch'
alias gba='git branch -a'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
