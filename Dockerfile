FROM alpine:3.8

RUN apk --update add curl \
    nginx \
    php7 \
    php7-curl \
    php7-ctype \ 
    php7-fpm \
    php7-iconv \
    php7-intl \
    php7-json \
    php7-mbstring \
    php7-opcache \
    php7-openssl \
    php7-pdo \
    php7-pdo_mysql \
    php7-phar \
    php7-posix \
    php7-session \
    php7-simplexml \
    php7-xml \
    php7-xmlwriter \
    php7-tokenizer \
    php7-dom --repository http://nl.alpinelinux.org/alpine/edge/testing/ && rm /var/cache/apk/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer 
