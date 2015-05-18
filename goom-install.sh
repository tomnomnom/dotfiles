#!/bin/bash
sudo apt-get install libx11-dev libxft-dev libxinerama-dev dmenu

pushd .
mkdir -p ~/src/github.com/seanpringle
cd ~/src/github.com/seanpringle
rm -rf goomwwm
git clone git@github.com:seanpringle/goomwwm.git
cd goomwwm
make

sudo cp goomwwm /usr/local/bin/
sudo mkdir -p /usr/local/share/man/man1
sudo cp goomwwm.1 /usr/local/share/man/man1/
sudo mandb

popd
sudo cp goomwwm.desktop /usr/share/xsessions/goomwwm.desktop
