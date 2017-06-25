# ~/.bashrc: executed by bash(1) for non-login shells.

echo Welcome back, Andy!  Your present working directory is $PWD

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
 export LS_OPTIONS='--color=auto'
 eval "`dircolors`"
 alias ls='ls $LS_OPTIONS'
 alias ll='ls $LS_OPTIONS -l'
 alias l='ls $LS_OPTIONS -lAh'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'
TERM=screen-256color
export EDITOR='nano'
alias mux='tmuxinator'
alias fv="su flexget -c 'flexget -V'"
alias fx="su flexget -c 'flexget execute'"
alias fu="pip install pip --upgrade && su flexget -c 'flexget daemon stop' && pip install flexget --upgrade && su flexget -c 'flexget daemon start --daemonize' && apt update && apt upgrade -y && su flexget -c 'flexget check'"
alias ua="fu"
alias whereami="echo 'On Earth, you silly human!!'"
alias ta="tmux a"
alias lm="l | more"
alias gp="su flexget -c 'cd ~/.flexget && git pull && flexget daemon reload'"
alias mh='mux home'
alias au='apt update && apt list --upgradable'
alias al='apt list --upgradable -a'
alias st='speedtest-cli'
