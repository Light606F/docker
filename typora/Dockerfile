# Command to build : docker build -t light606f/typora Dockerfiles/ownUbuntu/
# Command to run : docker run --rm -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix:ro light606f/typora typora
# Command to create window. Do on host. : xhost +local:docker

FROM light606f/ubuntu
# 作成したユーザの情報
MAINTAINER Light606F <light606f.tsukineko@gmail.com>

RUN apt install -y wget \
libgtk-3-0 \
libxss1 \
libnss3 \
libasound2 \
libcanberra-gtk-module libcanberra-gtk3-module

RUN wget -qO - https://typora.io/linux/public-key.asc | apt-key add -
RUN add-apt-repository 'deb https://typora.io/linux ./'

RUN apt update; apt install -y typora
