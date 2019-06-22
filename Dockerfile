FROM ubuntu:18.04

RUN apt-get update && apt-get install -y firefox libnss3 libxss-dev fonts-arphic-gkai00mp
RUN useradd -ms /bin/bash username
COPY baidunetdisk_linux_2.0.1.deb /baidunetdisk_linux_2.0.1.deb
RUN dpkg -i /baidunetdisk_linux_2.0.1.deb

USER username
ENV HOME /home/username

CMD /usr/local/bin/baidunetdisk

