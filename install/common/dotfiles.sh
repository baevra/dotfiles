#!/usr/bin/env bash

echo "cloning dotfiles"
git clone https://github.com/baevra/dotfiles.git "${HOME}/dotfiles"

# configs
ln -sf "${HOME}/dotfiles/configs/.zsh" "${HOME}/.config"
ln -sf "${HOME}/dotfiles/configs/.gitignore_global" "${HOME}/.gitignore_global"
ln -sf "${HOME}/dotfiles/configs/.gitconfig" "${HOME}/.gitconfig"
ln -sf "${HOME}/dotfiles/configs/.hyper.js" "${HOME}/.hyper.js"

# xcode
mkdir -p "${HOME}/Library/Developer/Xcode/UserData/KeyBindings"
ln -sf "${HOME}/dotfiles/configs/xcode/KeyBindings/baevra.idekeybindings" "${HOME}/Library/Developer/Xcode/UserData/KeyBindings/baevra.idekeybindings"
