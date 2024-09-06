#!/bin/bash

sudo apt install -y polybar

rm -rf ~/.config/polybar
ln -s $(pwd) ~/.config/polybar

