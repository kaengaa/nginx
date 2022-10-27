FROM nginx
RUN apt update && apt install wget
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN wget http://100.100.100.117:8888/default.conf -O /etc/nginx/conf.d/default.conf
ADD *.html /usr/share/nginx/html/
EXPOSE 80
CMD nginx -g 'daemon off;'
