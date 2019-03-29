# How to create dockerfile

Initialize.mdってファイルだったけど変更．

Dockerfileをどうやって作ったか参照するときに使えるかも．

# Create docker container

```
sudo docker container create -it --name c3 -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix -v /home/light606f/Documents/CamelliaDragons2018:/CamelliaDragons2018 -w="/CamelliaDragons2018"  ubuntu:16.04

xhost +local:docker
```

## Setting up docker terminal
Force Color
```
/root/.bashrc
```

# Install for B-Human
```
apt install clang qtbase5-dev libqt5svg5-dev libglew-dev libxml2-dev graphviz xterm
```

# Install Alcommon
DL "naoqi-sdk-2.1.4.13-linux32.tar.gz" FROM [HERE](https://community.ald.softbankrobotics.com/en/resources/software/language/en-gb)

```
./installAlcommon path/to/naoqi-sdk-2.1.4.13-linux32.tar.gz
```

# Install something
```
apt install nano
apt install make
apt install git
```

# Install openCV
```
apt install cmake libeigen3-dev libgtk-3-dev qt5-default freeglut3-dev \
libvtk6-qt-dev libtbb-dev ffmpeg libdc1394-22-dev libavcodec-dev libavformat-dev \
libswscale-dev libjpeg-dev libjasper-dev libpng++-dev libtiff5-dev \
libopenexr-dev libwebp-dev libhdf5-dev libpython3.5-dev python3-numpy \
python3-scipy python3-matplotlib libopenblas-dev liblapacke-dev

git clone https://github.com/opencv/opencv.git

cd opencv
git checkout 3.1.0
mkdir build
cd build

cmake \
   -D CMAKE_BUILD_TYPE=RELEASE \
   -D CMAKE_INSTALL_PREFIX=/usr/local \
   -D BUILD_opencv_python2=ON \
   -D BUILD_opencv_python3=ON ..

make -j $(nproc)
sudo make install

sudo /bin/bash -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig
```
