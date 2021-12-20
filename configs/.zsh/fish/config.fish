set fish_greeting ""

set LC_ALL en_US.UTF-8
set LANG en_US.UTF-8

set MINT_PATH /opt/mint
set MINT_LINK_PATH "$MINT_PATH/bin"

set PATH $PATH:/usr/local/bin
set PATH $PATH:/opt/homebrew/bin

# BINDINGS
bind cmd\&backspace 'backward-kill-line'
bind cmd\&left 'backward-word'
bind cmd\&right 'forward-word'

# ALIAS
alias brew="arch -arm64 /opt/homebrew/bin/brew"
alias c="code ."
alias x="xed ."
alias n="npm run"
alias xcode="xed"
alias gitlog="git log --pretty=format:'%h %s' --graph"
alias gitlogdev="git log --pretty=format:'%s' --graph develop.."
alias gitclean="git branch | grep -v \"master\" | xargs git branch -D && git fetch --all --prune"
alias gitamend="git commit --amend --no-edit && git push --force"
alias cleanxcode="rm -rf ~/Library/Developer/Xcode/DerivedData/ && rm -rf ~/Library/Caches/org.swift.swiftpm/"
alias sendpush="xcrun simctl push D3F459A6-AC0B-4487-8B3E-82D224BE94B0 ru.beeline.safety.family ~/Desktop/first.apn"
