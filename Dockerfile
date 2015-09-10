FROM php:fpm

MAINTAINER Jono Warren <jono@justpark.com>

# Install modules
RUN apt-get update && apt-get install -y \
	libmcrypt-dev \
	php5-redis \
	nginx \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# lumen packages
RUN docker-php-ext-install mcrypt mbstring tokenizer
