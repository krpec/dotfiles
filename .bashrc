# ~/.bashrc

export PATH="$PATH:$HOME/bin:$HOME/.rvm/bin"
export TZ='Europe/Prague'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend
shopt -s checkwinsize

if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
fi

# Aliases
alias ls='ls --color=auto'
alias la='ls --color=auto -alF'
alias ll='ls --color=auto -lF'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'

alias b='bundle'
alias be='bundle exec'
alias bu='bundle update'
alias rc='rails console'
alias rs='rails server'

alias linbox='/usr/bin/wine ~/bin/win/winbox64.exe'

alias ch='git checkout'
alias gf='git fetch -v'
alias config='/usr/bin/git --git-dir=/home/krpec/.cfg/ --work-tree=/home/krpec'

alias czkb='setxkbmap cz qwerty'
alias uskb='setxkbmap us'

# Prompt setup
#PS1='[\u@\h \w]\$'

function parse_git_branch () {
	git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

NO_COLOR="\[\033[00m\]"
RED="\[\033[01;31m\]"
GREEN="\[\033[01;32m\]"
YELLOW="\[\033[01;33m\]"
BLUE="\[\033[01;34m\]"

if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	PS1="$GREEN\u@\h$NO_COLOR:$BLUE\w$YELLOW\$(parse_git_branch) $GREEN\$ $NO_COLOR"
	#PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w \$\[\033[00m\] '
else
	PS1="\u@\h:\w\$(parse_git_branch) \$ "
fi

#Window title
case "$TERM" in
xterm*|rxvt*)
	PS1="\[\e]0;\u@\h: \w\$(parse_git_branch)\a$PS1"
	;;
*)
	;;
esac

# Variables
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# ssh-agent
 if ! pgrep -u "$USER" ssh-agent > /dev/null; then
 	ssh-agent > "$XDG_RUNTIME_DIR/ssh-agent.env"
 fi
 if [[ ! "$SSH_AUTH_SOCK" ]]; then
 	eval "$(<"$XDG_RUNTIME_DIR/ssh-agent.env")"
 fi
 
