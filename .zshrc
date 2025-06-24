# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export BROWSER=google-chrome
export TERMINAL=wezterm
export EDITOR=$(where nvim)

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=robbyrussell

# Download Znap, if it's not there yet.
[[ -r ~/.config/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/.config/Repos/znap
source ~/.config/Repos/znap/znap.zsh  # Start Znap

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# source "$HOME/.cargo/env"

# Znap Installs
znap source zsh-users/zsh-syntax-highlighting
znap source marlonrichert/zsh-autocomplete
znap source MichaelAquilina/zsh-autoswitch-virtualenv
znap source joshskidmore/zsh-fzf-history-search

alias cls=clear
alias qr='qrencode -m 2 -t utf8 <<< "$1"'

export GOPATH="$HOME/go"
export PATH="/usr/local/go/bin:$GOPATH:$GOPATH/bin:/home/gui/.local/bin:$PATH"
export WINTERMPATH="$HOME/.config/winterm"

#nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
#nvm end

# pnpm
export PNPM_HOME="/home/gui/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/home/gui/.bun/_bun" ] && source "/home/gui/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Python
alias python=python3
alias pip=pip3

# zoxide
export PATH="$PATH:/home/gui/.local/bin"
eval "$(zoxide init zsh)"

# alias nvim to vim
alias vim=nvim

#alias cat to batcat
alias bat=batcat

# golang related
export PATH=$PATH:/usr/local/go/bin

# add nvim to path

export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# command aliases
alias tks="tmux kill-server"
alias opl="netstat -tulpn | grep LISTEN"
alias rsx="sudo service lightdm restart"
alias focus="sudo hostctl toggle focus"

# Use neovim for man pages
export MANPAGER="$(where nvim) +Man!"
export MANWIDTH=80

# add my special scripts folder to path
export PATH="$PATH:$HOME/.scripts"

# run onefetch with images
alias of="cls && onefetch --image ~/.dotfiles/.assets/haerin.jpg"

#Php related
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Source SO machine specifics
source .specificszsh
