FROM php:8.0-fpm

# add configs & data after package install (so packages won't override them)
#ADD ./docker-files/php.conf /etc/nginx/php.conf
#ADD ./docker-files/nginx.conf /etc/nginx/nginx.conf

# Create directories
RUN \
    mkdir -p /var/www/crud
ADD ./ /var/www/crud

WORKDIR /var/www/crud