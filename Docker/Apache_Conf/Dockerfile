FROM httpd:2.4-alpine

RUN apk update && apk add --no-cache bash

COPY 000-default.conf /usr/local/apache2/conf/httpd.conf

COPY var/ /usr/local/apache2/htdocs/

RUN chown -R apache2:apache2 /var/log/apache2 & \
    chmod -R 755 /var/log/apache2

USER apache2

EXPOSE 8080

CMD ["httpd-foreground"]
