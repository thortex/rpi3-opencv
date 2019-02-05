# OpenCV for Raspberry Pi 3

A prebuilt binary debian package of OpenCV 4.0.1 for Raspberry Pi 3. It depends on Tesseract 4 (4.0.0).

## How to Install

```
git clone https://github.com/thortex/rpi3-opencv.git
cd rpi3-opencv/release
./install_requires_related2leptonica.sh
./install_requires_related2tesseract.sh
./install_requires_related2opencv.sh
./install_tesseract.sh
./install_opencv.sh
```

## BUild Options

| Option         | Support    |
|:---------------|:-----------|
| Build Type     | Release    |
| Install Prefix | /usr/local |
| Eigen          | ON |
| gstreamer      | ON |
| GTK            | ON |
| Jasper         | ON |
| JPEG           | ON |
| OpenEXR        | ON |
| PNG            | ON |
| TIFF           | ON |
| V4L            | ON |
| LIBV4L         | ON |
| VTK            | ON |
| LAPACK         | ON |
| LAPACKE        | ON |
| protobuf       | ON |
| 1394           | ON |
| ffmpeg         | ON |
| gphoto2        | ON |
| Qt             | ON |
| TBB            | ON |
| WebP           | ON |
| unicap         | ON |
| cxx11          | ON |
| NEON           | ON |
| VFPV3          | ON |
| OpenMP         | ON |
| OpenCL         | ON |
| OpenGL         | OFF |
| OpenNI         | OFF |
| GDAL           | OFF |
| CUDA           | OFF |
| XINE           | OFF |

## Supported Hardwares

| Board                 | Support |
|:----------------------|:--------|
| 3 Model B+            | May Yes |
| 3 Model B             | Yes     |
| 2 Model B v1.2        | May Yes |
| 2 Model B             | No      |
| 1 Model B+            | No      |
| 1 Model B             | No      |
| Model A               | No      |
| Model A+              | No      |
| Zero                  | No      |
| Zero W                | No      |
| Computer Module 1     | No      |
| Computer Module 3     | May Yes |
| Computer Module 3 Lite| May Yes |


## How to Build

```
sudo apt-get update
sudo apt-get upgrade -y 
./setup/019_checkinstall.sh
./setup/030_build_opencv.sh
./setup/031_install_opencv.sh
./setup/032_update_deps.sh
```

### CXXFLAGS

| Option | Value                |
|:-------|:---------------------|
|-mtune  | cortex-a53           |
|-march  | armv8-a+crc          |
|-mcpu   | cortex-a53           |
|-mfpu   | crypto-neon-fp-armv8 |



