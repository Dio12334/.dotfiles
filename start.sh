#!/bin/bash

sudo apt update && sudo apt upgrade
sudo apt install tree

DIR_LIST=$(ls -d */ | cut -f1 -d'/')
echo ${DIR_LIST[@]}

for item in ${DIR_LIST[@]}
do
    cd $item
    ./setup.sh
    cd ..
done
echo "done"
