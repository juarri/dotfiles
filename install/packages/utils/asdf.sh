#!/bin/bash

yay -S --noconfirm --needed asdf-vm

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

mkdir -p "${ASDF_DATA_DIR:-$HOME/.asdf}/completions"
asdf completion zsh >"${ASDF_DATA_DIR:-$HOME/.asdf}/completions/_asdf"

# append completions to fpath
###fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
# initialise completions with ZSH's compinit
###autoload -Uz compinit && compinit
