#!/bin/bash

sudo apt install alacritty

rm -rf ~/.config/alacritty
ln -s $(pwd) ~/.config/alacritty

sudo update-alternatives --set x-terminal-emulator $(which alacritty)
