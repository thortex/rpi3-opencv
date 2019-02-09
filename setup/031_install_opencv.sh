#!/bin/bash -x
YMD=20190209
V=4.0.1
D=opencv/build/
F=opencv_${YMD}_armhf.deb
P=${F/opencv_/opencv_$V-}

if [ -f "${D}${P}" ] ; then
    mv ${D}${P} ./release/${P}
fi

sudo dpkg -i ./release/${P}
sudo ldconfig

