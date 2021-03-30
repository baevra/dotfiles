set fish_greeting ""

set LC_ALL en_US.UTF-8
set LANG en_US.UTF-8

set MINT_PATH /opt/mint
set MINT_LINK_PATH "$MINT_PATH/bin"

set PATH $PATH:/usr/local/bin
set PATH $PATH:/opt/homebrew/bin

# ALIAS
alias brew="arch -arm64 /opt/homebrew/bin/brew"
alias commit="git add .; git commit"
alias c="code ."
alias x="xed ."
alias n="npm run"
alias xcode="xed"
alias gitlog="git log --pretty=format:'%h %s' --graph"
alias gitlogdev="git log --pretty=format:'%s' --graph develop.."
alias gitclean="git branch | grep -v \"master\" | xargs git branch -D && git fetch --all --prune"
alias example="xcode ~/ios/pulse/Modules/Recruitment/Examples/RecruitmentExample/"
