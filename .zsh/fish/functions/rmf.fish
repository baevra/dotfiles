function rmf -d "Collection of force remove commands"
  if test (count $argv) -gt 3
    printf "%s\n" (_ "Too many args for command")
    return 1
  end

  switch "$argv[1]"
  case "containers"
    set_color blue
    echo "removing docker containers..."
    set_color normal
    docker rm -f (docker ps -a -q)
  case "images"
    set_color blue
    if not set -q argv[2] 
      echo "removing docker images..."
      set_color normal
      docker rmi (docker images -a -q) --force
    else if test $argv[2] = "-d" || test $argv[2] = "--dangling"
      echo "removing docker images..."
      set_color normal
      docker images -qf dangling=true | xargs docker rmi 
    else 
      printf "%s\n" (_ "Unsupported command") 
      set_color normal
    end
  case "services"
    set_color blue
    echo "removing docker services"
    set_color normal
    docker service rm (docker service ls -q)
  case "volumes"
    set_color blue
    echo "removing docker volumes..."
    set_color normal
    docker volume rm (docker volume ls -q)
  case "configs"
    set_color blue
    echo "removing docker configs..."
    set_color normal
    docker config rm (docker config ls -q)
  case "docker"
    set_color blue
    echo "removing docker services, containers and volumes..."
    set_color normal
    docker service rm (docker service ls -q)
    docker rm -f (docker ps -a -q)
    docker volume rm (docker volume ls -q)
    docker config rm (docker config ls -q)
  case "carthage"
    set_color blue
    echo "removing carthage cache..."
    set_color normal
    rm -rf ~/Library/Caches/org.carthage.CarthageKit
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



complete -c rmf -f -n "__fish_use_subcommand" -a containers -d "Remove docker containers"
complete -c rmf -f -n "__fish_use_subcommand" -a images -d "Remove docker images"
complete -c rmf -f -n "__fish_use_subcommand" -a volumes -d "Remove docker volumes"

complete -c rmf -f -n "__fish_seen_subcommand_from images" -s d -l dangling -d "Remove docker dangling images"