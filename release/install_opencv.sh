#!/bin/sh -x
U=https://github.com/thortex/rpi3-opencv/releases/download/
R=v4.0.1
V=4.0.1
F=opencv_${V}_armhf.deb

X=${U}${R}/$F
wget -c $X
sudo dpkg -i $F
sudo ldconfig
