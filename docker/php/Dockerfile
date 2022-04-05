FROM php:${PHP_VERSION:-7.4-fpm-alpine}

LABEL maintainer="Aloïs Micard <a.micard@vold.lu>"

# Setup user for PHP-FPM with ID 1000
RUN adduser --uid 1000 --disabled-password --no-create-home dolibarr

# Tweak PHP-FPM config
RUN sed -i 's/user = www-data/user = dolibarr/g' /usr/local/etc/php-fpm.d/www.conf

RUN echo 'php_admin_flag[log_errors]=On' >> /usr/local/etc/php-fpm.d/www.conf

RUN apk add --no-cache \
      freetype \
      libjpeg-turbo \
      libpng \
      freetype-dev \
      libjpeg-turbo-dev \
      libpng-dev \
      icu-dev \
      libzip-dev \
    && docker-php-ext-configure gd \
      --with-freetype=/usr/include/ \
      --with-jpeg=/usr/include/ \
    && docker-php-ext-configure intl \
    && docker-php-ext-install -j$(nproc) gd calendar intl zip mysqli pdo_mysql \
    && docker-php-ext-enable gd calendar intl zip \
    && apk del --no-cache \
      freetype-dev \
      libjpeg-turbo-dev \
      libpng-dev \
    && rm -rf /tmp/*