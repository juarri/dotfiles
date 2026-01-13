#!/bin/bash

yay -S --noconfirm --needed sesh-bin

# Generate completion script
sesh completion zsh >_sesh

# Install system-wide (recommended)
sudo mkdir -p /usr/local/share/zsh/site-functions
sudo cp _sesh /usr/local/share/zsh/site-functions/

# Reload your shell
source ~/.zshrc
