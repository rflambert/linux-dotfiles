# Linux Dotfiles
Custom configuration files for a Zsh terminal environment and vim setup. Zsh plugins are handled through Antigen while Vim plugins are managed by Vundle.

## Prerequisites
+ zsh
+ vim

## Installation
Clone repository including antigen and vimconf into home directory subfolder:

`git clone --recurse-submodules git@github.com:rflambert/linux-dotfiles.git ~/.dotfiles`

Then make symbolic links with config files in local repository to home directory:

`./updatelinks.sh`
