# Command to build : build.bash
# Command to run : run.bash

FROM ubuntu:20.04
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

# to aboid "Please set the geographic..."
RUN sudo apt install -y \
tzdata

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
