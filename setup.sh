#!/bin/bash

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

# Check if `apt` is available
if ! command_exists apt || ! command_exists curl; then 
  echo "this script is only available for apt-using distros with curl installed"
  exit 1
fi

# Update apt registry
echo "Updating APT registries..."
sudo apt update &> /dev/null
echo "Updated registries."

# Check if Git is installed, if not, install git
if ! command_exists git; then
  echo -e "\nInstalling git..."
  sudo apt install git -y
  echo "Git installed"
else
  echo "Git is already installed"
fi


# Check if stow is installed, if not, install and run stow 
if ! command_exists stow; then
  echo -e "\nInstalling GNU Stow..."
  sudo apt install stow -y
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
  sudo apt install zsh -y
  zsh --version
fi


# Check if `neovim` is installed, if not, install and configure zsh
if ! command_exists nvim; then
  echo -e "\nInstalling neovim..."
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
  sudo rm -rf /opt/nvim 
  sudo tar -C /opt -xzf nvim-linux64.tar.gz
  echo "Neovim installed"

  echo "Installing neovim config dependencies: fzf, ripgrep, clang"
  sudo apt install fzf ripgrep clang -y
  echo "Dependencies installed sucessfuly"
fi


