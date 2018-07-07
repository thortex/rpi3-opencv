#!/bin/sh -x
# Versions
R=v0.0.4
LEPT_VER=1.76.0
TESS_VER=4.0.0-beta.3
# base url.
U=https://github.com/thortex/rpi3-echo/releases/download/

# Install Leptonica
F=leptonica_${LEPT_VER}-1_armhf.deb
wget -c $F
sudo dpkg -i $F

# Install Tesseract 4
FO=tesseract-ocr_${TESS_VER}-1_armhf.deb
FD=tesseract-data_${TESS_VER}-1_armhf.deb
FS=tesseract-script-data_${TESS_VER}-1_armhf.deb
wget -c $FO
wget -c $FD
wget -c $FS
sudo dpkg -i $FO $FD $FS
