FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y install apache2

WORKDIR /var/www/html

COPY . .

VOLUME [ "/var/www/html" ]

CMD ["/usr/sbin/apache2ctl", "-D","FOREGROUND"]
EXPOSE 80
