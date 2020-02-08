# Command to build : docker build -t [IMAGE NAME] python/
# Command to run : docker run --rm -it -v $PWD:/home -p 5000:5000 light606f/flask
# Command to create window. Do on host. : xhost +local:docker

FROM light606f/ubuntu:18.04
# 作成したユーザの情報
MAINTAINER Light606F <light606f.tsukineko@gmail.com>

RUN apt update; apt install -y python3 \
python3-pip \
python3-dev

RUN pip3 install -U pip
