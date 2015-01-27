#!/bin/sh

git clone "https://github.com/ulimit/zsh-git.git"
for file in .tmux.conf .vimrc .zcompdump .zshrc .vim
do
  cp -r "zsh-git/$file" .
done

rm -rf zsh-git
rm $0
