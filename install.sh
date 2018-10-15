#!/bin/bash

function place_files() {
    git clone "https://github.com/astropuffin/dotfiles.git"
    for file in .tmux.conf .vimrc .zcompdump .bashrc .zshrc .vim .gitconfig
    do
      cp -r "dotfiles/$file" ~
    done
}

function setup_git() {
    git config --global push.default simple
    git config --global user.name=astropuffin
    git config --global user.email=astropuffin@users.noreply.github.com
}

function vim-pathogen(){
	mkdir -p ~/.vim/autoload ~/.vim/bundle && \
		curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	
	pushd ~/.vim/bundle
		git clone https://github.com/hashivim/vim-terraform.git
	popd
}

function cleanup(){
    rm -rf dotfiles
    rm install.sh
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
vim-pathogen
cleanup
source ~/.bashrc
