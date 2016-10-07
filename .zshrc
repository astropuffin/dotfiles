PS1=$'\e[0;32m%* %h %? %n@%M: %d \e[0m> '

alias ls='ls --color'
alias ll='ls -l'
alias ltr='ls -ltr'
alias diffys='diff -y --suppress-common-lines'
export GOPATH=$HOME/work
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

if [ "$TMUX" = "" ]; then tmux; fi
