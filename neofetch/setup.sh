#!/bin/bash
sudo apt install neofetch

rm -rf ~/.config/neofetch
ln -s $(pwd) ~/.config/neofetch

