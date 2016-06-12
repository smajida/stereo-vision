#!/bin/bash
mkdir output
LD_PRELOAD=/usr/lib/arm-linux-gnueabihf/libv4l/v4l1compat.so fswebcam -r 544x288 -d /dev/video0 /home/pi/Development/stereo-vision/ImageCapture/output/left.jpg &
LD_PRELOAD=/usr/lib/arm-linux-gnueabihf/libv4l/v4l1compat.so fswebcam -r 544x288 -d /dev/video1 /home/pi/Development/stereo-vision/ImageCapture/output/right.jpg &
wait
cd ../FaceDetection
mkdir output
python opencv.py