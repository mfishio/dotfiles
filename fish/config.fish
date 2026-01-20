if status is-interactive
    starship init fish | source
    zoxide init fish | source
end

set -Ux EDITOR nvim
