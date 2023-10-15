#!/bin/bash
libcamera-vid -t 0 --width 960 --height 540 --brightness 0.30 --contrast 1.3 --codec h264 --inline --listen -o tcp://0.0.0.0:8080
# libcamera-vid -t 0 --width 960 --height 540 --inline -o - | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8080/}' :demux=h264 --sout-rtsp-user braoutch --sout-rtsp-pwd aeddqkmo
# libcamera-vid -t 0 --width 960 --height 540 --inline  -o udp://0.0.0.0:8080