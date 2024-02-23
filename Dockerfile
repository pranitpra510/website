FROM ubuntu
RUN apt update && apt install apache2 -y
RUN rm /var/www/html/index.html
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
