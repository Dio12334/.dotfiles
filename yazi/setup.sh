#!/bin/bash

cargo install --locked yazi-fm yazi-cli

rm -rf ~/.config/yazi
ln -s $(pwd) ~/.config/yazi

