FROM php:7.0-apache
RUN a2enmod rewrite
RUN docker-php-ext-install gettext mysqli
COPY unmark /var/www/html
COPY database.php /var/www/html/application/config/
