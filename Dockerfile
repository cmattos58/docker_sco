FROM cmattos58/php:5.6.31-apache

COPY . /var/www/html/

RUN apt-get update && \
    apt-get install --force-yes -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev && \
    docker-php-ext-configure gd --with-freetype --with-jpeg && \
    docker-php-ext-install gd mbstring mysqli pdo pdo_mysql shmop

EXPOSE 80
