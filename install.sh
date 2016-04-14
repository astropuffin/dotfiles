#!/bin/sh

git clone "https://github.com/astropuffin/dotfiles.git"
for file in .tmux.conf .vimrc .zcompdump .zshrc .vim
do
  cp -r "dotfiles/$file" .
done

rm -rf dotfiles
rm $0
