#!/usr/bin/env bash

echo "cloning dotfiles"
git clone https://github.com/baevra/dotfiles.git "${HOME}/dotfiles"
ln -sf "${HOME}/dotfiles/configs/.zsh" "${HOME}/.config"
ln -sf "${HOME}/dotfiles/configs/.gitignore_global" "${HOME}/.gitignore_global"
ln -sf "${HOME}/dotfiles/configs/.gitconfig" "${HOME}/.gitconfig"
ln -sf "${HOME}/dotfiles/configs/.hyper.js" "${HOME}/.hyper.js"
