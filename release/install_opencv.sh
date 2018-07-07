#!/bin/sh -x
U=https://github.com/thortex/rpi3-opencv/releases/download/
R=v3.4.2
V=3.4.2-20180706

F=${U}${R}/opencv_${V}-1_armhf.deb

wget -c $F

sudo dpkg -i $F
sudo ldconfig
