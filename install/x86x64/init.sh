#!/usr/bin/env bash

# ~/.macos — https://mths.be/macos
# Modified by Baevra
# Run without downloading:
# curl https://raw.githubusercontent.com/baevra/dotfiles/master/.macos | bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

echo "Hello $(whoami)! Let's get you set up."

# create folders
/bin/bash ./common/folders.sh

# install apps
/bin/bash ./apps.sh

# generate tokens
/bin/bash ./common/ssh.sh

# copy dotfiles
/bin/bash ./common/dotfiles.sh

# prefs
# /bin/bash ./pref.sh

echo "Done"
