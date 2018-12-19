# Command to build : docker build -t [IMAGE NAME] Dockerfiles/ownUbuntu/
# Command to run : docker run --rm -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix:ro -v /lib/modules:/lib/modules:ro -v /dev:/dev:ro --privileged light606f/unity # /bin/bash
# Command to create window. Do on host. : xhost +local:docker

FROM light606f/ubuntu
# 作成したユーザの情報
MAINTAINER Light606F <light606f.tsukineko@gmail.com>

RUN apt install -y wget \
kmod \
fuse \
libgtk2.0-0 \
libx11-xcb1 \
libnss3 \
libasound2 \
libdbus-glib-1-2 \
libcanberra-gtk-module

RUN wget https://public-cdn.cloud.unity3d.com/hub/prod/UnityHubSetup.AppImage
RUN chmod 764 UnityHubSetup.AppImage

# RUN modprobe fuse

# RUN ./UnityHubSetup.AppImage
