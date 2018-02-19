PS1=$'\e[0;32m%* %h %? %n@%M: %d \e[0m> '

unsetopt beep
set -o vi

alias ls='ls --color'
alias ll='ls -l'
alias ltr='ls -ltr'
alias diffys='diff -y --suppress-common-lines'
export GOPATH=$HOME/work
mkcdir(){
    mkdir "$@"
    if [ "$1" = "-p" ]; then
        cd "$2"
    else
        cd "$1"
    fi
}
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

if [ "$TMUX" = "" ]; then tmux; fi
