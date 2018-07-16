#!/bin/sh -x
U=https://github.com/thortex/rpi3-opencv/releases/download/
R=v3.4.2-opencl
V=3.4.2-20180716

F=${U}${R}/opencv_${V}_armhf.deb

wget -c $F

sudo dpkg -i $F
sudo ldconfig
