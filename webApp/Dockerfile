FROM light606f/python
MAINTAINER Light606F <light606f.tsukineko@gmail.com>

RUN sudo apt update -y; sudo apt upgrade -y

RUN pip install flask

RUN sudo apt install -y curl
RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh

# snap currently not supported on docker container
# RUN sudo apt install -y \
# snapd
# RUN sudo snap install --classic heroku
