

function gitup -d "Collection git aliases"
  if test (count $argv) -gt 3
    printf "%s\n" (_ "Too many args for command")
    return 1
  end

  switch "$argv[1]"
  case "reset"
    git reset --soft HEAD~(git rev-list --count develop..) && git commit -m $argv[2]
  case "log"
    git log --pretty=format:'%s' --graph develop..
  case "rebase"
    if test (git rev-list --count develop..) -gt 1
      set_color red
      echo "reset first"
      set_color normal
      return
    end
    set branch (git branch --show-current)
    git checkout develop
    git pull
    git checkout $branch
    git rebase develop
  case "push"
    if test (git rev-list --count develop..) -gt 1
      set_color red
      echo "reset and rebase first"
      set_color normal
      return
    end
    git push --force
  case "*"
    printf "%s\n" (_ "Unsupported command")
  end
end


function __fish_no_subcommand --description 'Test if func has yet to be given the subcommand'
    for i in (commandline -opc)
        if contains -- $i containers images volumes
            return 1
        end
    end
    return 0
end

complete -c gitup -f -n "__fish_use_subcommand" -a reset -d "Reset to current branch head with commit message"
complete -c gitup -f -n "__fish_use_subcommand" -a log -d "Git log commits from current branch head"
