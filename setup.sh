#!/usr/bin/env bash

# Basic dotfiles
FILES=( .bash_profile .profile .gitconfig )
for i in ${FILES[@]}; do
  ln -sf $(pwd)/$i $HOME/$i
done

# Run scripts for this particular system
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [ "$machine" == "Mac" ]; then 
    ./setup_mac.sh
fi

if [ "$machine" == "Linux" ]; then 
    ./setup_ubuntu.sh
fi