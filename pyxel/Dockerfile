# Command to build : docker build -t light606f/pyxel .
# Command to run : docker run --rm -it --runtime=nvidia -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix:ro -v /dev/input:/dev/input:ro -v ${PWD}:/home light606f/pyxel
# Command to create window. Do on host. : xhost +local:docker

FROM nvidia/opengl:base-ubuntu18.04
# 作成したユーザの情報
MAINTAINER Light606F <light606f.tsukineko@gmail.com>

# git
# nano
# software-properties-common : to use add-repository
RUN apt update; apt install -y \
git \
nano \
software-properties-common \
bash-completion \
python3 python3-pip libglfw3 libportaudio2

# set Locale
RUN sh -c "echo '\nexport LC_ALL=C.UTF-8' >> /root/.bashrc"

# Initializer
WORKDIR /
RUN git clone https://github.com/light606f/initializer.git
WORKDIR initializer
RUN bash terminalSetting.bash

RUN pip3 install pyxel

WORKDIR /home
