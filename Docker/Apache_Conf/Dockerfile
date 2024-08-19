FROM httpd:2.4.62-alpine

RUN apk update

COPY ./000-default.conf /etc/apache2/sites-available/

COPY ./var/var/www/ /var/www/

RUN mkdir -p /usr/local/apache2/logs && \
    chown -R www-data:www-data /var/www/task3 /usr/local/apache2/logs && \
    chmod -R 755 /var/www/task3 /usr/local/apache2/logs

USER www-data

EXPOSE 8080
