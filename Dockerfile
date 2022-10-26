FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y nginx
ADD ./default.conf /etc/nginx/conf.d/default.conf
WORKDIR /etc/nginx
CMD nginx

