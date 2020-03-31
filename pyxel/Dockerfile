# Command to build : docker build -t light606f/pyxel .

# Command to run : docker run --rm -it --runtime=nvidia -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix:ro --device /dev/snd --group-add=audio -v /dev/input:/dev/input:ro -v ${PWD}:/home/Light606F/workdir light606f/pyxel

# docker run --rm -it --runtime=nvidia \ # for opengl
# 	-e DISPLAY=$DISPLAY \ # pass the display
# 	-v /tmp/.X11-unix/:/tmp/.X11-unix:ro \ # mount the X11 socket
# 	--device /dev/snd --group-add=audio \ # sound
# 	-v /dev/input:/dev/input:ro -v ${PWD}:/home/Light606F/workdir light606f/pyxel

# Command to create window. Do on host. : xhost +local:docker

# --- IN container, how to use ---
# USE "python3.8" command
# USE "pip3.8" instead of pip

FROM nvidia/opengl:base-ubuntu18.04
# 作成したユーザの情報
MAINTAINER Light606F <light606f.tsukineko@gmail.com>

# -------------------------------------- BASE ------
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
# -------------------------------------- BASE ------

RUN sudo apt update; sudo apt install -y \
python3.8 python3-pip libsdl2-dev libsdl2-image-dev;\
python3.8 -m pip install pip pyxel

ENV PATH "$PATH:/home/Light606F/.local/bin"

WORKDIR /home/Light606F/workdir
