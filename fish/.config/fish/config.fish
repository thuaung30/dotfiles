if status is-interactive
    # Commands to run in interactive sessions can go here
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

set fish_greeting ""

# tmux aliases
alias main "tmux new -s main"
alias fp "tmux neww tmux-sessionizer"
alias tl "tmux ls"
alias ta "tmux attach -t"
alias ks "tmux kill-session && tmux ls"

alias rs "reveal-ssh-hosts"
alias vim "nvim"
alias nerd "nerdfetch"

starship init fish | source
pyenv init - | source

# Nix
if test -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish'
  source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish'
end
# End Nix
