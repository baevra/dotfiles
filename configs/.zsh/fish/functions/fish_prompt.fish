function fish_prompt
    set_color green
    echo -n '❯ '
    set_color normal
end

function fish_title
    set -q argv[1]; or set argv fish
    echo 🔥
end
