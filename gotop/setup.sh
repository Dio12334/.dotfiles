#!/bin/bash
if which gotop &> /dev/null; then
    echo "gotop already installed."
else
    wget https://github.com/xxxserxxx/gotop/releases/download/v4.2.0/gotop_v4.2.0_linux_amd64.deb
    sudo dpkg -i gotop_v4.2.0_linux_amd64.deb
    rm gotop_v4.2.0_linux_amd64.db
fi

rm -rf ~/.config/gotop
ln -s $(pwd) ~/.config/gotop
