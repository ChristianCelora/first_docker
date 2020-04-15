FROM php:7.3.3-apache
ENV TZ=Europe/Rome
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN echo "date.timezone=$TZ" >> /usr/local/etc/php/conf.d/default.ini
RUN docker-php-ext-intall mysql
RUN apt-get update -y
RUN a2enmod rewrite
EXPOSE 80