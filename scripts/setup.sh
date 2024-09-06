#!/bin/bash

rm ~/bin/dp_*
cd commands
sudo ln -s $(pwd)/dp_* ~/bin/
cd ..

cd recurring
sudo ln -s $(pwd)/dp_* ~/bin/
cd ..

dp_add_cronjobs cronjobs
