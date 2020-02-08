# Command to build : docker build -t [IMAGE NAME] python/
# Command to run : docker run --rm -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix:ro light606f/python
# Command to create window. Do on host. : xhost +local:docker

FROM light606f/python
# 作成したユーザの情報
MAINTAINER Light606F <light606f.tsukineko@gmail.com>

RUN pip install flask
