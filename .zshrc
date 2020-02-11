source ~/.dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

# Plugins
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-completions

# Theme
antigen theme robbyrussell

antigen apply

# Aliases
alias dotfiles="cd ~/.dotfiles"
alias zshcfg="vim ~/.zshrc"
alias vimcfg="vim ~/.vimrc"
alias /="cd /"
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd../../.."
alias .....="cd ../../../.."
