# Command to build : docker build -t light606f/ubuntu:18.04 ubuntu18.04/
# Command to run : docker run --rm --net=host -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix:ro light606f/ubuntu /bin/bash
# Command to create window. Do on host. : xhost +local:docker

FROM ubuntu:18.04
# 作成したユーザの情報
MAINTAINER Light606F <light606f.tsukineko@gmail.com>

# add sudo user
RUN apt update; apt install -y sudo
RUN groupadd -g 1000 developer && \
	useradd  -g      developer -G sudo -m -s /bin/bash Light606F && \
	echo 'Light606F:passwd' | chpasswd
RUN echo 'Defaults visiblepw'             >> /etc/sudoers
RUN echo 'Light606F ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER Light606F

# git
# nano
# software-properties-common : to use add-repository
RUN sudo apt install -y \
git \
nano \
software-properties-common \
bash-completion

# set Locale
RUN sudo sh -c "echo '\nexport LC_ALL=C.UTF-8' >> /root/.bashrc"

# Initializer
WORKDIR /home/Light606F
RUN git clone https://github.com/light606f/initializer.git
WORKDIR initializer
RUN bash terminalSetting.bash

# set enable bash-completion
# すでに動作してるように思うが，なぜかTODOが残っていたのでそのまま残しておく．多分何もしなくても問題ない．
# TODO
