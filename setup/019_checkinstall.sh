#!/bin/sh -x

sudo apt-get remove checkinstall 

git clone https://github.com/giuliomoro/checkinstall
cd checkinstall
sudo make install
