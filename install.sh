#!/bin/bash

nvim_config="$HOME/.config/nvim/init.vim"
zsh_config="$HOME/.zshrc"

if [ ! -h $nvim_config ]; then
    echo "=> $nvim_config is not here...symlinking..."
    ln -s $HOME/dev/dotfiles/init.vim $HOME/.config/nvim/init.vim
else
    echo "=> $nvim_config already exists! quitting."
    exit 1
fi

if [ ! -h $zsh_config ]; then
    echo "=> $zsh_config is not here...symlinking..."
    ln -s $HOME/dev/dotfiles/zshrc $HOME/.zshrc
else
    echo "=> $nvim_config does exist"
fi
