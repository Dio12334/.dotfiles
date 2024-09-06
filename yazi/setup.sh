#!/bin/bash

if which yazi &> /dev/null; then
    echo "yazi already installed."
else
    cargo install --locked yazi-fm yazi-cli
fi

rm -rf ~/.config/yazi
ln -s $(pwd) ~/.config/yazi

