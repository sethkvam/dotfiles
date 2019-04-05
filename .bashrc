###################################################################
 # RELOAD THIS FILE WITH: loadbash
 # . ~/.bashrc
###################################################################

alias cdwin='cd ../../mnt/c/Users/skvam/Dev'
alias cdweb='cd ../../mnt/c/xampp/htdocs/preview.pointb'

export DOCKER_HOST=tcp://127.0.0.1:2375
#export DISPLAY=:0

export PATH=~/bin:$PATH

# export PS1="\[\e[33m\]\u\[\e[m\]\[\e[37;40m\]@\[\e[m\]\[\e[36m\]\w\[\e[m\] "
export PS1="\[\033[0;32m\]\u@\h:\e[0;93m\w \e[0;93m$ \e[m" 
# \e[m

alias piggydev='tmux new-session \; split-window -h \; split-window -v \; resize-
pane -x 132 -y 43 \; send-keys "cd ~/367sp17/piggy/" C-m'

alias tmux-vert3="tmux new-session \; split-window -v \;"

# check window size after each command; if necessary,
# update the values of LINES and COLUMNS
shopt -s checkwinsize

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi

# enable color support of ls and add handy aliases
if [ -x /usr/vin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls = 'ls --color=auto'
	alias grep = 'grep --color=auto'
	alias fgrep = 'fgrep --color=auto'
	alias egrep = 'egrep --color=auto'
fi

alias firefox-dev='~/.local/share/umake/web/firefox-dev/firefox'
alias ll='ls -alF'
alias la='ls -A'
#alias ls='ls -ls'
alias emacs='emacs -nw'
alias loadbash='. ~/.bashrc'
alias enterwwu='ssh -p 922 kvams@linux.cs.wwu.edu'
alias enterpcx='ssh -p 922 kvams@procavx.proj.cs.wwu.edu'

# trying to add l='ls -la -Rt' to list sorted by date
# none of these were working at all tho 8-2-17

# MAN PAGE COLORS via russellparker.me
export MANROFFOPT='-c'
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2)
export LESS_TERMCAP_md=$(tput bold; tput setaf 6)
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4)
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7)
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)
