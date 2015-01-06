general preference settings

assumes:
tmux
vim
zsh

setting up multiple keys:
cat ~/.ssh/config
Host <something descriptive>
  HostName github.com
  User <username>
  IdentityFile ~/.ssh/<private key you want to use>

cat ~/.git/config
[remote "origin"]
        url = git@<same descriptive name as Host>:<user or owner of repo>/<repo name>.git

vim colors:
https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim
