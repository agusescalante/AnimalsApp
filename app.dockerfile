FROM php:7.4-fpm 
RUN apt-get update
RUN apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql
    && chown -R www-data:www-data /var/www
    
RUN usermod -u 1000 www-data