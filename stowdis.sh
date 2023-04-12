!#/usr/bin/env zsh

if [[ -z $STOW_FOLDERS ]]; then
	STOW_FOLDERS="alacritty,base16-shell,fish,gitconfig,nix,nvim,scripts,starship,tmux,zsh"
fi

if [[ -z $DOTFILES ]]; then
    DOTFILES=$HOME/.dotfiles
fi

for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    echo "removing stow $folder"
    stow -D $folder
    echo "stow-ing $folder"
    stow $folder
done