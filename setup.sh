#!/usr/bin/env bash

# Basic dotfiles
FILES=( .bash_profile .profile .zprofile )
for i in ${FILES[@]}; do
  ln -sf $(pwd)/$i $HOME/$i
done

# Run scripts for this particular system
machine="$(./get_machine.sh)"

if [ "$machine" == "Mac" ]; then 
    ./setup_mac.sh
fi

if [ "$machine" == "Linux" ]; then 
    ./setup_linux.sh
fi