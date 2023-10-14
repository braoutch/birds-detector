# birds-detector
 
It runs on Raspberry pi zero 2 64 bits OS only.

## usage
Run both
```
libcamera-vid -t 0 --width 1920 --height 1080 --codec h264 --inline --listen -o tcp://0.0.0.0:8888
```
and
```
python3 cuicuicompute.py
```
To see on vlc use the address `tcp/h264://<ip>:8888/`

## Installation
To install the requirements :
### install conda
```
wget http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-armv7l.sh
sudo md5sum Miniconda3-latest-Linux-armv7l.sh # (optional) check md5
sudo /bin/bash Miniconda3-latest-Linux-armv7l.sh 
# -> change default directory to 
/home/pi/miniconda3
#open the bashrc
sudo nano /home/pi/.bashrc 
# -> add this line: 
export PATH="/home/pi/miniconda3/bin:$PATH"
# add python versions
conda config --add channels rpi
```

### alternative : miniforge
```
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh
```


### create and activate conda env
```
conda create py38 python=3.8
conda activate py38
```

### install the deps
```
sudo apt install libcap-dev python3-libcamera gcc python-dev
python3 -m pip install --extra-index-url=https://www.piwheels.org/simple torch==1.11.0 torchvision==0.12.0
python3 -m pip install --extra-index-url=https://www.piwheels.org/simple ultralytics
python3 -m pip install --extra-index-url=https://www.piwheels.org/simple -r requirements.txt
```


### increasing swap might be required
```
sudo dphys-swapfile swapoff
sudo nano /etc/dphys-swapfile # increase the value
sudo dphys-swapfile swapon
sudo reboot
```
