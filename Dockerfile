FROM centos:7
MAINTAINER George Liu <https://github.com/centminmod/docker-nginx-mini>

ENV TERM xterm
ADD . /usr/local/nps
RUN chmod +x /usr/local/nps/np-stack && ln -s /usr/local/nps/np-stack /usr/bin/nps && nps setup
CMD ["bash","nps","start","0"]

EXPOSE 80 443
