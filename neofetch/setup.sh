#!/bin/bash
sudo apt install -y neofetch

rm -rf ~/.config/neofetch
ln -s $(pwd) ~/.config/neofetch

