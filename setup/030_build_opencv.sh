#!/bin/sh -x

V=3.4.2
TESS_INC_DIR=/usr/local/include/tesseract
TESS_LIBRARY=/usr/local/lib/libtesseract.so.4

# numpy は latest 版を入れる
sudo pip3 install numpy

sudo apt-get install \
     build-essential \
     ccache \
     cmake \
     pkg-config \
     libpng-dev \
     libpng++-dev \
     libjpeg-dev \
     libtiff5-dev \
     libjasper-dev \
     libavcodec-dev \
     libavformat-dev \
     libavresample-dev \
     libswresample-dev \
     libavutil-dev \
     libswscale-dev \
     libv4l-dev \
     libxvidcore-dev \
     libx264-dev \
     libgtk-3-dev \
     libgdk-pixbuf2.0-dev \
     libpango1.0-dev \
     libcairo2-dev \
     libfontconfig1-dev \
     libatlas-base-dev \
     liblapack-dev \
     liblapacke-dev \
     libblas-dev \
     libopenblas-dev \
     gfortran \
     python-pip \
     python3-pip \
     python-numpy \
     python-dev \
     python3-dev \
     libeigen2-dev \
     libeigen3-dev \
     libopenexr-dev \
     libgstreamer1.0-dev \
     libgstreamermm-1.0-dev \
     libgoogle-glog-dev \
     libgflags-dev \
     libprotobuf-c-dev \
     libprotobuf-dev \
     protobuf-c-compiler \
     protobuf-compiler \
     libgphoto2-dev \
     qt5-default \
     libvtk6-dev \
     libvtk6-qt-dev \
     libhdf5-dev \
     freeglut3-dev \
     libgtkglext1-dev \
     libgtkglextmm-x11-1.2-dev \
     libwebp-dev \
     libtbb-dev \
     libdc1394-22-dev \
     libunicap2-dev \
     ffmpeg 


wget -c -O opencv.zip https://github.com/opencv/opencv/archive/${V}.zip
wget -c -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/${V}.zip
unzip opencv.zip
unzip opencv_contrib.zip
cd opencv-${V}
mkdir -p build
cd build

export CXXFLAGS='-mtune=cortex-a53 -march=armv8-a+crc -mcpu=cortex-a53 -mfpu=crypto-neon-fp-armv8'

cmake -D CMAKE_BUILD_TYPE=RELEASE \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-${V}/modules \
      -D BUILD_WITH_DEBUG_INFO=ON \
      -D BUILD_SHARED_LIBS=ON \
      -D BUILD_CUDA_STUBS=ON \
      -D BUILD_DOCS=OFF \
      -D BUILD_ZLIB=OFF \
      -D BUILD_TIFF=OFF \
      -D BUILD_JPEG=OFF \
      -D BUILD_JASPER=OFF \
      -D BUILD_PNG=OFF \
      -D BUILD_OPENEXR=OFF \
      -D BUILD_PERF_TESTS=OFF \
      -D BUILD_TBB=OFF \
      -D BUILD_WEBP=OFF \
      -D BUILD_TESTS=OFF \
      -D BUILD_EXAMPLES=OFF \
      -D BUILD_JAVA=OFF \
      -D WITH_EIGEN=ON \
      -D WITH_GSTREAMER=ON \
      -D WITH_GTK=ON \
      -D WITH_JASPER=ON \
      -D WITH_JPEG=ON \
      -D WITH_OPENEXR=ON \
      -D WITH_PNG=ON \
      -D WITH_TIFF=ON \
      -D WITH_V4L=ON \
      -D WITH_LIBV4L=ON \
      -D WITH_VTK=ON \
      -D WITH_LAPACK=ON \
      -D WITH_LAPACKE=ON \
      -D WITH_PROTOBUF=ON \
      -D WITH_1394=ON \
      -D WITH_EIGEN=ON \
      -D WITH_FFMPEG=ON \
      -D WITH_GPHOTO2=ON \
      -D WITH_OPENGL=OFF \
      -D WITH_QT=ON \
      -D WITH_TBB=ON \
      -D WITH_WEBP=ON \
      -D WITH_UNICAP=ON \
      -D WITH_OPENNI=OFF \
      -D WITH_GDAL=OFF \
      -D WITH_CUBLAS=OFF \
      -D WITH_NVCUVID=OFF \
      -D WITH_CUDA=OFF \
      -D WITH_CUFFT=OFF \
      -D WITH_IPP=OFF \
      -D WITH_IPP_A=OFF \
      -D WITH_OPENMP=OFF \
      -D WITH_PTHREADS_PF=OFF \
      -D WITH_PVAPI=OFF \
      -D WITH_MATLAB=OFF \
      -D WITH_XIMEA=OFF \
      -D WITH_XINE=OFF \
      -D WITH_OPENCL=OFF \
      -D WITH_OPENCLAMDBLAS=OFF \
      -D WITH_OPENCLAMDFFT=OFF \
      -D WITH_OPENCL_SVM=OFF \
      -D INSTALL_PYTHON_EXAMPLES=ON \
      -D ENABLE_CXX11=ON \
      -D ENABLE_CCACHE=ON \
      -D ENABLE_FAST_MATH=ON \
      -D ENABLE_NEON=ON \
      -D ENABLE_VFPV3=ON \
      -D ENABLE_PROFILING=OFF \
      -D ENABLE_COVERAGE=OFF \
      -D ENABLE_OMIT_FRAME_POINTER=ON \
      -D BUILD_opencv_apps=ON \
      -D BUILD_opencv_aruco=ON \
      -D BUILD_opencv_bgsegm=ON \
      -D BUILD_opencv_calib3d=ON \
      -D BUILD_opencv_bioinspired=ON \
      -D BUILD_opencv_dnn=ON \
      -D BUILD_opencv_dpm=ON \
      -D BUILD_opencv_core=ON \
      -D BUILD_opencv_face=ON \
      -D BUILD_opencv_features2d=ON \
      -D BUILD_opencv_flann=ON \
      -D BUILD_opencv_freetype=ON \
      -D BUILD_opencv_fuzzy=ON \
      -D BUILD_opencv_hfs=ON \
      -D BUILD_opencv_highgui=ON \
      -D BUILD_opencv_imgcodecs=ON \
      -D BUILD_opencv_imgproc=ON \
      -D BUILD_opencv_ml=ON \
      -D BUILD_opencv_objdetect=ON \
      -D BUILD_opencv_optflow=ON \
      -D BUILD_opencv_phase_unwrapping=ON \
      -D BUILD_opencv_photo=ON \
      -D BUILD_opencv_plot=ON \
      -D BUILD_opencv_python2=ON \
      -D BUILD_opencv_python3=ON \
      -D BUILD_opencv_reg=ON \
      -D BUILD_opencv_rgbd=ON \
      -D BUILD_opencv_saliency=ON \
      -D BUILD_opencv_shape=ON \
      -D BUILD_opencv_stereo=ON \
      -D BUILD_opencv_stitching=ON \
      -D BUILD_opencv_superres=ON \
      -D BUILD_opencv_surface_matching=ON \
      -D BUILD_opencv_text=ON \
      -D BUILD_opencv_tracking=ON \
      -D BUILD_opencv_ts=ON \
      -D BUILD_opencv_video=ON \
      -D BUILD_opencv_videoio=ON \
      -D BUILD_opencv_videostab=ON \
      -D BUILD_opencv_viz=OFF \
      -D BUILD_opencv_world=OFF \
      -D BUILD_opencv_xfeature2d=ON \
      -D BUILD_opencv_ximgproc=ON \
      -D BUILD_opencv_xobjdetect=ON \
      -D BUILD_opencv_xphoto=ON \
      -D BUILD_opencv_java=OFF \
      -D BUILD_opencv_cudaarithm=OFF \
      -D BUILD_opencv_cudabgsegm=OFF \
      -D BUILD_opencv_cudacodec=OFF \
      -D BUILD_opencv_cudafeatures2d=OFF \
      -D BUILD_opencv_cudafilters=OFF \
      -D BUILD_opencv_cudaimgproc=OFF \
      -D BUILD_opencv_cudalegacy=OFF \
      -D BUILD_opencv_cudaobjdetect=OFF \
      -D BUILD_opencv_cudaoptflow=OFF \
      -D BUILD_opencv_cudastereo=OFF \
      -D BUILD_opencv_cudawarping=OFF \
      -D BUILD_opencv_cudev=OFF \
      -D Tesseract_INCLUDE_DIR=$TESS_INC_DIR \
      -D Tesseract_LIBRARY=$TESS_LIBRARY \
      .. && make && sudo checkinstall


