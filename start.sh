#!/bin/bash

sudo apt update && sudo apt upgrade

mkdir ~/bin

sudo apt install -y tree
sudo apt install -y locate
sudo apt install -y acpi
sudo apt install -y curl


if which rustup &> /dev/null; then
    echo "rustup already installed"
else
    sudo curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    rustup update
fi

source ~/.profile

DIR_LIST=$(ls -d */ | cut -f1 -d'/')
echo ${DIR_LIST[@]}

for item in ${DIR_LIST[@]}
do
    cd $item
    ./setup.sh
    cd ..
done
echo "done"
