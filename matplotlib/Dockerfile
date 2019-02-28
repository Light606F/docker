# どのイメージを基にするか
FROM python
# 作成したユーザの情報
MAINTAINER Light606F <light606f.tsukineko@gmail.com>

RUN echo "PS1='\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '" >> $HOME/.bashrc

RUN pip install --upgrade pip
RUN pip install matplotlib
