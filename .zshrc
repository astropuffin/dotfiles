PS1=$'\e[0;32m%* %h %? %n@%M: %d \e[0m> '

alias ls='ls --color'
alias ll='ls -l'
alias ltr='ls -ltr'
alias diffys='diff -y --suppress-common-lines'

if [ "$TMUX" = "" ]; then tmux; fi
