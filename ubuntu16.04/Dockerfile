# Command to build : docker build -t light606f/ubuntu:16.04 ubuntu16.04
# Command to run : docker run --rm --net=host -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix:ro light606f/ubuntu /bin/bash
# Command to create window. Do on host. : xhost +local:docker

FROM ubuntu:16.04
# 作成したユーザの情報
MAINTAINER Light606F <light606f.tsukineko@gmail.com>

# git
# nano
# software-properties-common : to use add-repository
RUN apt update; apt install -y \
git \
nano \
software-properties-common \
bash-completion

# set Locale
RUN sh -c "echo '\nexport LC_ALL=C.UTF-8' >> /root/.bashrc"

# Initializer
WORKDIR /
RUN git clone https://github.com/light606f/initializer.git
WORKDIR initializer
RUN bash terminalSetting.bash

# set enable bash-completion
# すでに動作してるように思うが，なぜかTODOが残っていたのでそのまま残しておく．多分何もしなくても問題ない．
# TODO

WORKDIR /home
