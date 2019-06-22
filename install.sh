#!/usr/bin/env bash

# Run scripts for this particular system
machine="$(./get_machine.sh)"

if [ "$machine" == "Mac" ]; then 
    ./install_mac.sh
fi

if [ "$machine" == "Linux" ]; then 
    ./install_ubuntu.sh
fi