if status is-interactive
    # Commands to run in interactive sessions can go here
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

set fish_greeting ""

alias dev "tmux new -s dev"
alias vim "nvim"
alias nerd "nerdfetch"

source ~/.phpbrew/phpbrew.fish
starship init fish | source
