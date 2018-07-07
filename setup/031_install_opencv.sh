#!/bin/bash -x
YMD=20180706
V=3.4.2
D=opencv-${V}/build/
F=opencv_${YMD}-1_armhf.deb
P=${F/opencv_/opencv_$V-}

if [ -f "${D}${F}" ] ; then
    mv ${D}${F} ./release/${P}
fi

sudo dpkg -i ./release/${P}
sudo ldconfig

