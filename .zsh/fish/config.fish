set fish_greeting ""

set LC_ALL en_US.UTF-8
set LANG en_US.UTF-8

export SLACK_CLI_TOKEN='xoxp-409805444097-410360349458-538390015333-5be0830d11c9da26945f0ddc6513ab2b'
# ALIAS
alias commit="git add .; git commit"
alias c="code ."
alias x="xed ."
alias n="npm run"
alias xcode="xed"
alias gitlog="git log --pretty=format:'%h %s' --graph"
alias gitclean="git branch | grep -v \"master\" | xargs git branch -D && git remote prune origin"