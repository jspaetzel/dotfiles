#!/usr/bin/env bash

# Basic dotfiles
FILES=( .bash_profile .profile .gitconfig )
for i in ${FILES[@]}; do
  ln -sf $(pwd)/$i $HOME/$i
done

# VS Code User Settings
ln -sf $(pwd)/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json