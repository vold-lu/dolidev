ARG PHP_VERSION

FROM php:${PHP_VERSION}

LABEL maintainer="Aloïs Micard <a.micard@vold.lu>"

# Setup user for PHP-FPM with ID 1000
RUN adduser --uid 1000 --disabled-password --no-create-home dolibarr

RUN apk add --no-cache \
      freetype \
      libjpeg-turbo \
      libpng \
      freetype-dev \
      libjpeg-turbo-dev \
      libpng-dev \
      icu-dev \
      libzip-dev \
      imap-dev \
      openssl-dev \
      zip \
      $PHPIZE_DEPS \
    && pecl install xdebug-3.1.0 \
    && docker-php-ext-configure gd \
      --with-freetype=/usr/include/ \
      --with-jpeg=/usr/include/ \
    && docker-php-ext-configure intl \
    && docker-php-ext-configure imap --with-imap-ssl \
    && docker-php-ext-install -j$(nproc) gd calendar intl zip mysqli pdo_mysql imap \
    && docker-php-ext-enable gd calendar intl zip xdebug\
    && apk del --no-cache \
      freetype-dev \
      libjpeg-turbo-dev \
      libpng-dev \
    && rm -rf /tmp/*

COPY www.conf /usr/local/etc/php-fpm.d/www.conf
