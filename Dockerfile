FROM ubuntu:xenial

MAINTAINER Florin Veres <florin@futurefreedom.ro>

RUN apt update && apt -y install php7.0 php7.0-cli php7.0-curl php7.0-gd php7.0-json php7.0-mysql php7.0-opcache \
    php7.0-xml php7.0-bcmath php7.0-bz2 php7.0-fpm php7.0-intl php7.0-mbstring php7.0-mcrypt \
    imagemagick php-memcached nodejs npm composer nginx-full supervisor \
    && apt clean all \
    && npm install --global gulp-cli \
    && rm -f /etc/localtime && cp /usr/share/zoneinfo/Europe/Bucharest /etc/localtime

RUN apt update && apt -y install php7.0-zip unzip