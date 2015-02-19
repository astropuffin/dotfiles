# The following lines were added by compinstall
zstyle :compinstall filename '/home/joe.schneider/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
PS1=$'\e[0;32m%* %h %? %n@%M: %d \e[0m> '

alias ls='ls --color'
alias ll='ls -l'
alias ltr='ls -ltr'
alias diffys='diff -y --suppress-common-lines'
alias stmux='echo "ssh-aent zsh;ssh-add;tmux'

