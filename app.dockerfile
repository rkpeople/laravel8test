FROM php:7.3-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev \
    default-mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install pdo_mysql \
    && pecl install mcrypt-1.0.3 \
	&& docker-php-ext-enable mcrypt