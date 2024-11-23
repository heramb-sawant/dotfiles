#!/usr/bin/env bash

echo "Installing brew..."

if command -v brew &>/dev/null; then
  echo "${0}: brew is already installed"
  exit 0
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installed brew..."