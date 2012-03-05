# ~/.bashrc: executed by bash(1) for non-login shells.

# Author:     Markus Bulla
# Company:    Cassini Consulting GmbH

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# Define some common aliases and make lists colorful
export LS_OPTIONS='--color=auto'
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -lah'
alias l='ls $LS_OPTIONS -lA'
alias more='less'
alias vi='vim'

# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

export JAVA_HOME="/usr/lib/jvm/java-6-sun/"
