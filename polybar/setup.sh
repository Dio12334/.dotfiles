#!/bin/bash

sudo apt install polybar

rm -rf ~/.config/polybar
ln -s $(pwd) ~/.config/polybar

