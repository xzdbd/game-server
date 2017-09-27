FROM ubuntu:14.04

ENV SERVERPORT=8388
ENV PASSWORD=password
ENV METHOD=aes-256-cfb

ADD https://raw.githubusercontent.com/xzdbd/game-server/master/install-game-server.sh /opt/install-game-server.sh
RUN apt-get update
RUN chmod +x /opt/install-game-server.sh 
RUN /opt/install-game-server.sh install && /etc/init.d/game-server stop

EXPOSE $SERVERPORT
CMD /usr/local/game-server/game-server -c /usr/local/game-server/config.json
