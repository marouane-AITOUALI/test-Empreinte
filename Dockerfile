FROM php:7-fpm


RUN apt-get update && apt-get install -y nginx


RUN apt-get install -y mysql-server phpmyadmin


COPY php.ini /usr/local/etc/php/conf.d/php.ini


RUN apt-get install -y \
    php5.6-mysql \
    php5.6-mcrypt \
    php5.6-cli \
    php5.6-gd \
    php5.6-curl \
    php5.6-intl \
    php5.6-json \
    php5.6-xml \
    php5.6-xsl \
    php5.6-json \
    php5.6-mbstring \
    php5.6-imagick \
    php5.6-imap \
    php5.6-zip \
    php5.6-bcmath


EXPOSE 80


CMD ["nginx", "-g", "daemon off;"]

