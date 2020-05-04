# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

# Plugins
antigen bundle git
antigen bundle ssh-agent
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-completions
antigen bundle supercrabtree/k

# Theme
antigen theme romkatv/powerlevel10k
ZLE_RPROMPT_INDENT=0

antigen apply

# Aliases
alias splash="clear && neofetch"
alias .f="cd ~/.dotfiles"
alias zshcfg="vim ~/.zshrc"
alias vimcfg="vim ~/.vimrc"
alias /="cd /"
alias ~="cd ~"
alias C:="cd /run/media/ronan/Windows-SSD"
alias D:="cd /media/Windows-SSD/Media"
alias ..="cd .."
alias l="k"
alias la="k -a"
alias ...="cd ../.."
alias ....="cd../../.."
alias .....="cd ../../../.."

# Servers Aliases
alias ra-server="/media/Windows-SSD/Media/Games/OpenRA/OpenRA-Red-Alert-x86_64.AppImage --server Server.Name=\"Oce's Server\" Server.ListenPort=1234 Server.AdvertiseOnline=True Server.Password=palepine"
alias d2k-server="/media/Windows-SSD/Media/Games/OpenRA/OpenRA-Dune-2000-x86_64.AppImage --server Server.Name=\"Oce's Server\" Server.ListenPort=1234 Server.AdvertiseOnline=True Server.Password=palepine"
alias cnc-server="/media/Windows-SSD/Media/Games/OpenRA/OpenRA-Tiberian-Dawn-x86_64.AppImage --server Server.Name=\"Oce's Server\" Server.ListenPort=1234 Server.AdvertiseOnline=True Server.Password=palepine"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
