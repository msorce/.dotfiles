#!/usr/bin/env bash

#vim setup
 file="$HOME/.vimrc"
 echo $file
 if [ -f $file ]
 then
   mkdir ~/.dotfiles.old
   mv ~/.vimrc ~/.dotfiles.old
 fi

ln -sv $HOME/.dotfiles/.config/ $HOME
ln -sv $HOME/.dotfiles/.vimrc $HOME
ln -sv $HOME/.dotfiles/.tmux.conf $HOME
ln -sv $HOME/.dotfiles/.Xdefaults $HOME
ln -sv $HOME/.dotfiles/.eslintrc.json $HOME
