function npmlist -d "Shows npm packages list"
  if test (count $argv) -gt 1
    printf "%s\n" (_ "Too many args for command")
    return 1
  end

  switch "$argv[1]"
  case "global"
    set_color blue
    echo "reading global packages..."
    set_color normal
    npm list -g --depth=0
  case "local" or ""
    set_color blue
    echo "reading local packages..."
    set_color normal
    npm list --depth=0
  case "*"
    printf "%s\n" (_ "Unsupported command")
  end
end

complete -xc npmlist -a "local" -d "Show local packages"
complete -xc npmlist -a "global" -d "Show global packages"

