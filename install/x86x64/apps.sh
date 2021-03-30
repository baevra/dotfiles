#!/usr/bin/env bash

echo "Installing homebrew"
# install homebrew https://brew.sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "brew installing stuff"
# hub: a github-specific version of git
# libdvdcss: makes handbreak capable of ripping DVDs
# ripgrep: rg is faster than alternatives
# imagemagick: eventually I will need this for something
# ffmpeg: eventually I'll need this for something
# tree: really handy for listing out directories in text
# bat: A cat(1) clone with syntax highlighting and Git integration.
brew install \
git watchman tree \
fish terminal-notifier
xcodegen \
fastlane \
deno \
# ansible \

echo "installing apps with brew cask"
brew cask install \
hyper \
visual-studio-code \
figma \
google-chrome firefox \
telegram discord slack whatsapp zoom \
folx iina \
# docker mongodb-compass \

# echo "installing node (via n-install)"
# curl -L https://git.io/n-install | bash
# echo "node --version: $(node --version)"
# echo "npm --version: $(npm --version)"
