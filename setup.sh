#!/usr/bin/env bash

FILES=( .bash_profile .profile .gitconfig )
for i in ${FILES[@]}; do
  ln -sf $(pwd)/$i $HOME/$i
done
