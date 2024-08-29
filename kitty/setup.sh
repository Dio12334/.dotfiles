#!/bin/bash

sudo apt install kitty

rm -rf ~/.config/kitty
ln -s $(pwd) ~/.config/kitty

# sudo update-alternatives --set x-terminal-emulator $(which kitty)
