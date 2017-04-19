CC = g++
OPENCV = -L/usr/local/lib/ -lopencv_highgui -lopencv_core -lopencv_imgproc -lopencv_imgcodecs -lopencv_videoio -lopencv_objdetect -I/local/include/opencv2
demo: VideoFaceDetector.cpp VideoFaceDetector.h
	$(CC) -std=c++11  main.cpp VideoFaceDetector.cpp $(OPENCV) -fopenmp -o demo -O3 -g
