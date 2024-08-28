FROM php:8.1-apache

COPY ./var/var/www/task3/html/ /var/www/html/

RUN chown -R www-data:www-data /var/www/html \
    && sed -i 's/80/8083/g' /etc/apache2/sites-available/000-default.conf \
    && sed -i 's/80/8083/g' /etc/apache2/ports.conf \
    && echo 'DirectoryIndex info.php' >> /etc/apache2/sites-available/000-default.conf

EXPOSE 8083

USER www-data
CMD ["apache2-foreground"]