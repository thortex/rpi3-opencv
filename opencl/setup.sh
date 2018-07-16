#!/bin/bash -x
V=3.4.2
U=https://raw.githubusercontent.com/opencv/opencv/

wget -q -c ${U}${V}/samples/opencl/opencl-opencv-interop.cpp
make
sudo LD_LIBRARY_PATH=/usr/local/lib sh -c 'echo $LD_LIBRARY_PATH; gcov ./opencl-opencv-interop -c 0'
