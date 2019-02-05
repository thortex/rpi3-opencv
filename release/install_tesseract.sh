#!/bin/sh -x
# Versions
R=4.0.0
LEPT_VER=1.77.0
TESS_VER=4.0.0
# base url.
U=https://github.com/thortex/rpi3-tesseract/releases/download/
# Install Leptonica
F=leptonica_${LEPT_VER}-1_armhf.deb
wget -c $U/$R/$F
sudo dpkg -i $F

# Install Tesseract 4
FO=tesseract-ocr_${TESS_VER}-1_armhf.deb
FD=tesseract-data_${TESS_VER}-1_armhf.deb
FS=tesseract-script-data_${TESS_VER}-1_armhf.deb
wget -c $U/$R/$FO
wget -c $U/$R/$FD
wget -c $U/$R/$FS
sudo dpkg -i $FO $FD $FS
