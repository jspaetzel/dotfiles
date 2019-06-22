#!/usr/bin/env bash

# VS Code User Settings
ln -sf $(pwd)/configs/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json

# Git Config
ln -sf $(pwd)/configs/mac/.gitconfig $HOME/.gitconfig