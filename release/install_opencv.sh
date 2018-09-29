#!/bin/sh -x
U=https://github.com/thortex/rpi3-opencv/releases/download/
R=v3.4.3-opencl
V=3.4.3-20180928
F=opencv_${V}_armhf.deb

X=${U}${R}/$F
wget -c $X
sudo dpkg -i $F
sudo ldconfig
