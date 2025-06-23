#!/bin/bash

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

# Check if `apt` is available
if ! command_exists dnf || ! command_exists curl; then 
  echo "this script is only available for dnf-using distros with curl installed"
  exit 1
fi

# Check if Git is installed, if not, install git
if ! command_exists git; then
  echo -e "\nInstalling git..."
  sudo dnf install git -y
  echo "Git installed"
else
  echo "Git is already installed"
fi

# Check if GitHub CLI is installed, if not, install github cli
if ! command_exists gh; then
  echo -e "\nInstalling GitHub CLI..."
  # DNF5 installation commands
  sudo dnf install dnf5-plugins -y 
  sudo dnf config-manager addrepo --from-repofile=https://cli.github.com/packages/rpm/gh-cli.repo
  sudo dnf install gh --repo gh-cli -y
  echo "GitHub CLI installed"
else
  echo "GitHub is already installed"
fi


# Check if stow is installed, if not, install and run stow 
if ! command_exists stow; then
  echo -e "\nInstalling GNU Stow..."
  sudo dnf install stow -y
  echo "Stow installed"
else
  echo "Stow is already installed"
fi

# Unlink previous usage
stow -D . && stow .
echo "Linked stow files"

# Check if `zsh` is installed, if not, install and configure zsh
if ! command_exists zsh; then
  echo -e "\nInstalling zsh..."
  sudo dnf install zsh -y
  echo -e "\Installing Oh my zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --keep-zshrc --unnatended
  echo -e "\nInstalling zsh utilities..."
  sudo dnf copr enable varlad/onefetch
  sudo dnf install neofetch onefetch zoxide -y
  zsh --version
  sudo chsh $(which zsh)
fi


# Check if `neovim` is installed, if not, install and configure zsh
if ! command_exists nvim; then
  echo -e "\nInstalling neovim..."
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
  sudo rm -rf /opt/nvim 
  sudo tar -C /opt -xzf nvim-linux64.tar.gz
  echo "Neovim installed"

  echo "Installing neovim config dependencies: fzf, ripgrep, clang"
  sudo dnf install fzf ripgrep clang -y
  echo "Dependencies installed sucessfuly"
fi
