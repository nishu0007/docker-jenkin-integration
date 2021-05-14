FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install curl -y
RUN apt-get install nginx -y
RUN service nginx start
COPY index.html /var/www/html
ENTRYPOINT service nginx start && /bin/bash
