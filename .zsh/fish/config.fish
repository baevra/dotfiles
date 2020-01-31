set fish_greeting ""

set LC_ALL en_US.UTF-8
set LANG en_US.UTF-8

# ALIAS
alias commit="git add .; git commit"
alias c="code ."
alias x="xed ."
alias n="npm run"
alias xcode="xed"
alias gitlog="git log --pretty=format:'%h %s' --graph"
alias gitclean="git branch | grep -v \"master\" | xargs git branch -D && git fetch --all --prune && git tag | xargs git tag -d"
