xhost +local:docker
# docker run --rm --net=host -it -e DISPLAY=$DISPLAY -v /tmp/.X11-unix/:/tmp/.X11-unix:ro light606f/ubuntu /bin/bash
docker run --rm -it --net=host -v $PWD:/home/Light606F/work -w /home/Light606F/work light606f/webapp bash
