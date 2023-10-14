# birds-detector
 
It runs on Raspberry pi zero 2 64 bits OS only.
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

### create and activate conda env
```
conda create py38 python=3.8
conda activate py38
```

### install the deps
```
python3 -m pip install --extra-index-url=https://www.piwheels.org/simple torch==1.11.0 torchvision==0.12.0
python3 -m pip install --extra-index-url=https://www.piwheels.org/simple ultralytics
```


