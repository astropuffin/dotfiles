general preference settings

assumes:
tmux
vim
zsh

How to get these settings:
wget "https://raw.githubusercontent.com/ulimit/zsh-git/master/zsh-deploy.sh";
sh zsh-deploy.sh

and you're done!

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
