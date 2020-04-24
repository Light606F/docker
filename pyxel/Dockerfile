# Command to build : docker build -t light606f/pyxel .

# Command to run : dockerRun.bash

# Command to create window. Do on host. : xhost +local:docker

# COUTION : When play audio in host, docker container make error
# ALSA lib pcm_dmix.c:1052:(snd_pcm_dmix_open) unable to open slave
# pyxel error: failed to initialize SDL Audio in 'Audio'

# --- IN container, how to use ---
# USE "python3.8" command
# USE "pip3.8" instead of pip

FROM nvidia/opengl:base-ubuntu18.04
# 作成したユーザの情報
MAINTAINER light606f <light606f.tsukineko@gmail.com>

# -------------------------------------- BASE ------
# add sudo user
RUN apt update; apt install -y sudo
RUN groupadd -g 1000 developer && \
	useradd  -g      developer -G sudo -m -s /bin/bash light606f && \
	echo 'light606f:passwd' | chpasswd
RUN echo 'Defaults visiblepw'             >> /etc/sudoers
RUN echo 'light606f ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER light606f

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
WORKDIR /home/light606f
RUN git clone https://github.com/light606f/initializer.git
WORKDIR initializer
RUN bash terminalSetting.bash
# -------------------------------------- BASE ------

RUN sudo apt update; sudo apt install -y \
python3.8 python3-pip libsdl2-dev libsdl2-image-dev \
pulseaudio;\
python3.8 -m pip install pip pyxel

ENV PATH "$PATH:/home/light606f/.local/bin"

WORKDIR /home/light606f/workdir
