#!/bin/bash
sudo apt install -y picom

rm -rf ~/.config/picom
ln -s $(pwd) ~/.config/picom

