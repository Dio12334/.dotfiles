#!/bin/bash

sudo apt install -y cmus

rm -rf ~/.config/cmus
ln -s $(pwd) ~/.config/cmus

