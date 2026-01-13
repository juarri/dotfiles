#!/bin/bash

REPO_URL="https://github.com/juarri/dotfiles"
REPO_NAME="dotfiles"

is_stow_installed() {
  pacman -Qi "stow" &>/dev/null
}

if ! is_stow_installed; then
  echo "Install stow first"
  exit 1
fi

cd ~ || return

# Check if the repository already exists
if [ -d "$REPO_NAME" ]; then
  echo "Repository '$REPO_NAME' already exists. Skipping clone"
else
  git clone "$REPO_URL"
fi

# Check if the clone was successful
if $? -eq 0; then
  echo "removing old configs"
  rm -rf ~/.config/nvim ~/.config/starship.toml ~/.local/share/nvim/ ~/.cache/nvim/ ~/.config/ghostty/config

  cd "$REPO_NAME" || return
  stow zshrc
  stow ghostty
  stow tmux
  stow nvim
  stow starship
else
  echo "Failed to clone the repository."
  exit 1
fi
