FROM nginx
RUN apt update && apt install wget
RUN rm -rf /etc/nginx/conf.d/default.conf
RUN rm -rf /usr/share/nginx/html/hello.html
RUN wget http://100.100.100.117:5555/default.conf -O /etc/nginx/conf.d/default.conf
RUN wget http://100.100.100.117:5555/hello.html -O /usr/share/nginx/html/hello.html
EXPOSE 80
CMD nginx -g 'daemon off;'
