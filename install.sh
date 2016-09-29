#!/bin/bash
set -x

function place_files() {
    git clone "https://github.com/astropuffin/dotfiles.git"
    for file in .tmux.conf .vimrc .zcompdump .bashrc .zshrc .vim
    do
      cp -r "dotfiles/$file" .
    done
}

function setup_git() {
    git config --global push.default simple
    git config --global remote.origin.fetch "+refs/heads/*:refs/remotes/origin/*"
}

function cleanup(){
    rm -rf dotfiles
    rm $0
}

#install packages
if [ $(which apt-get | wc -l) -eq 1 ]; then
    echo "installing pachages via apt-get. Will require sudo password"
    sudo apt-get install -y vim git keychain tmux zsh
else
    echo "not ubuntu, and RH family not handled by this script"
    cleanup
    exit 1
fi

place_files
setup_git
cleanup
source ~/.bashrc
