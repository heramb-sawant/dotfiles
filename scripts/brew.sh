#!/usr/bin/env bash

echo "Installing brew..."

if command -v brew &>/dev/null; then
  echo "${0}: brew is already installed"
else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

echo "Installing packages..."

brew install make
brew install stow
brew install node
brew install nvm
brew install starship
brew install fzf

# cask "1password"
# cask "google-chrome"
brew install --cask font-hack-nerd-font
brew install --cask rectangle # Split Screens

echo "Brew installation complete..."