#!/bin/sh -x
U=https://github.com/thortex/rpi3-opencv/releases/download/
R=v3.4.2-opencl
V=3.4.2-20180716
F=opencv_${V}_armhf.deb

echo -n '' > $F
for x in a b c d e f g; do
    X=${U}${R}/opencv_${V}_armhf.xa$x
    wget -c $X
    cat ./opencv_${V}_armhf.xa$x >> $F
done

sha256sum -c SHA256SUM
if [ 0 = $? ] ; then
    sudo dpkg -i $F
    sudo ldconfig
fi
