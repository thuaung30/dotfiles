#! /bin/zsh

if [[ -z $STOW_FOLDERS ]]; then
	STOW_FOLDERS="alacritty,fish,gitconfig,nvim,scripts,skhd,starship,tmux,yabai,zsh"
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
