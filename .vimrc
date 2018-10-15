syntax enable
syntax on
set background=dark
colorscheme solarized

filetype plugin indent on
set expandtab
set tabstop=4
set shiftwidth=4

execute pathogen#infect()
let g:terraform_fmt_on_save=1
