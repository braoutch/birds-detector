#!/bin/bash
libcamera-vid -t 0 --width 1920 --height 1080 --codec h264 --inline --listen -o tcp://0.0.0.0:8888