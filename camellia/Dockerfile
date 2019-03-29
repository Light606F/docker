# buildしてからの話
# light606f:CamelliaDragons2018$ docker container create -it --name camellia -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix -v /home/light606f/Documents/SPL/CamelliaDragons2018:/CamelliaDragons2018 -w="/CamelliaDragons2018"  camellia
# 2292a67979f24d2c406988b0b56dfdb198e6654cb1df256a906749d57bd6d5c2
#
# light606f:CamelliaDragons2018$ docker start camellia
# camellia
#
# light606f:CamelliaDragons2018$ docker attach camellia

# xhost +local:docker

# どのイメージを基にするか
FROM ubuntu:16.04
# 作成したユーザの情報
MAINTAINER Light606F <light606f.tsukineko@gmail.com>

RUN apt update; apt install -y \
git \
nano \
software-properties-common \
bash-completion

# Install something
RUN apt update; apt install -y \
make \
# Install for B-Human
clang \
qtbase5-dev \
libqt5svg5-dev \
libglew-dev \
graphviz \
xterm

# ## Install Alcommon
# RUN ./Install/installAlcommon naoqi-sdk-2.1.4.13-linux32.tar.gz

# Install for openCV
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update; apt install -y \
cmake \
libeigen3-dev \
libgtk-3-dev \
qt5-default \
freeglut3-dev \
libvtk6-qt-dev \
libtbb-dev \
ffmpeg \
libdc1394-22-dev \
libavcodec-dev \
libavformat-dev \
libswscale-dev \
libjpeg-dev \
libpng++-dev \
libtiff5-dev \
libopenexr-dev \
libwebp-dev \
libhdf5-dev \
python3-numpy \
python3-scipy \
python3-matplotlib \
libopenblas-dev \
liblapacke-dev

RUN apt update; apt install -y \
libpython3.5-dev
 # \
RUN apt update; apt install -y \
libjasper-dev
 # \

WORKDIR /
RUN git clone https://github.com/opencv/opencv.git

WORKDIR opencv
RUN git checkout 3.1.0
RUN mkdir build
WORKDIR build

RUN cmake \
   -D CMAKE_BUILD_TYPE=RELEASE \
   -D CMAKE_INSTALL_PREFIX=/usr/local \
   -D BUILD_opencv_python2=ON \
   -D BUILD_opencv_python3=ON \
   ..

RUN make -j $(nproc)
RUN make install

RUN echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf
## 共有ライブラリの依存関係情報を更新する
RUN ldconfig

# Initializer
WORKDIR /
RUN git clone https://github.com/light606f/initializer.git

WORKDIR initializer
RUN bash terminalSetting.bash
