FROM ubuntu:14.04

MAINTAINER hawkup <https://github.com/hawkup>

CMD ["nginx"]

RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:nginx/stable
RUN apt-get update && apt-get install -y nginx

RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80
