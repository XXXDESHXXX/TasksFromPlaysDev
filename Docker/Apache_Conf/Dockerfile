# FROM httpd:2.4.62-alpine

# RUN apk update

# COPY ./000-default.conf /usr/local/apache2/conf/

# COPY ./var/var/www/ /usr/local/apache2/htdocs/

# RUN mkdir -p /usr/local/apache2/logs && \
#     chown -R www-data:www-data /usr/local/apache2/htdocs/ /usr/local/apache2/logs && \
#     chmod -R 755 /usr/local/apache2/htdocs/ /usr/local/apache2/logs

# USER www-data

# EXPOSE 8080

# CMD ["httpd-foreground"]
FROM ubuntu 
RUN apt update 
RUN apt install -y apache2 
RUN apt install -y apache2-utils 
RUN apt clean
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]