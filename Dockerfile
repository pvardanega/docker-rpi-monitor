FROM resin/rpi-raspbian
MAINTAINER Julien Ancelin / docker-rpi-monitor with github.com/XavierBerger/RPi-Monitor-deb
RUN  export DEBIAN_FRONTEND=noninteractive
ENV  DEBIAN_FRONTEND noninteractive
RUN  dpkg-divert --local --rename --add /sbin/initctl
# update and add rpi-monitor repository
RUN apt-get -y update
RUN apt-get install -y apt-transport-https ca-certificates wget vim 
RUN apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 2C0D3C0F
RUN wget http://goo.gl/rsel0F -O /etc/apt/sources.list.d/rpimonitor.list
RUN echo " deb https://github.com XavierBerger/RPi-Monitor-deb/raw/master/repo/" >> /etc/apt/sources.list.d/rpimonitor.list
RUN apt-get -y update
RUN  apt-get install -y rpimonitor
EXPOSE 8888
EXPOSE 4200
#EXPOSE 8000
CMD ["/etc/init.d/rpimonitor start"]

