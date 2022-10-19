#FROM nginx:1.23.1
#
#RUN apt-get update -y
#COPY index.html /data/www/
#COPY tiagotest.conf /etc/nginx/conf.d/tiagotest.conf
#COPY nginx.conf /etc/nginx/nginx.conf


FROM nginx:latest
RUN apt-get update -y
ADD index.html /usr/share/nginx/html/
EXPOSE 80