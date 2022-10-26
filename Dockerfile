FROM nginx
RUN apt update && apt install wget
RUN http://100.100.100.117:9999/default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD nginx -g daemon
