#!/usr/bin/zsh

command_exists() {
  command -v "$@" >/dev/null 2>&1
}

# Install nvm and configure default version + corepack

if ! command_exists nvm; then
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
else
  echo "NVM is already installed"
fi

source .zshrc

nvm install --lts
nvm use --lts
node -v
corepack enable

echo "NVM installed, corepack enabled"

if ! command_exists bun; then
  curl -fsSL https://bun.sh/install | bash
else
  echo "Bun is already installed"
fi
