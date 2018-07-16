TARGET=opencl-opencv-interop test
all: $(TARGET)

LDFLAGS=-lopencv_core \
	-lopencv_imgproc \
	-lopencv_video \
	-lopencv_imgcodecs \
	-lopencv_videoio \
	-lopencv_highgui \
	-lOpenCL
CXX=g++
CXXFLAGS=-O0 -g -pg -fprofile-arcs -ftest-coverage -lgcov

clean:
	rm -f $(TARGET)

