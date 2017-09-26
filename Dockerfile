FROM ubuntu:14.04

ENV SERVERPORT=8388
ENV PASSWORD=password
ENV METHOD=aes-256-cfb

ADD https://raw.githubusercontent.com/xzdbd/game-server/master/install-game-server.sh /opt/install-game-server.sh
RUN apt-get update &&\
    chmod +x /opt/install-game-server.sh &&\
    /opt/install-game-server.sh install

EXPOSE $SERVERPORT
CMD tail -f /usr/local/game-server/game-server.log
