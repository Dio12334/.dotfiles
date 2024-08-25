#!/bin/bash
sudo apt install picom

rm -rf ~/.config/picom
ln -s $(pwd) ~/.config/picom

