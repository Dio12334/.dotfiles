#!/bin/bash

sudo apt install cmus

rm -rf ~/.config/cmus
ln -s $(pwd) ~/.config/cmus

