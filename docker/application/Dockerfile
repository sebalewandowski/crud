FROM php:8.0-fpm-alpine

RUN apk update && apk add --no-cache $PHPIZE_DEPS \
    autoconf \
    libzip-dev \
    curl-dev \
    oniguruma-dev \
    zip \
    wget

RUN docker-php-ext-install mysqli pdo pdo_mysql zip mbstring curl && \
    rm -rf /var/cache/apk/*
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN pecl install xdebug-3.0.0 \
    && docker-php-ext-enable xdebug