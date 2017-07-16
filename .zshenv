## Modified commands
alias grep='grep --color=auto'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias vi='vim'
alias dmesg='dmesg -HL'
alias less='less -M'
alias more='less'

## New commands
alias clock='date +%H:%M'

## Root
if (( $UID -ne )); then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias snano='sudo nano'
    alias svim='sudo vim'
    alias root='sudo -i'
fi

## ls
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias llh='ls -lh --color=auto'

## Safety features
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -Iv'
alias ln='ln -iv'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
