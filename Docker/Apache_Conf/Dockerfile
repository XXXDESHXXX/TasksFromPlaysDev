FROM httpd:alpine

# Устанавливаем необходимые модули, если нужно
RUN apk add --no-cache php7 php7-fpm

# Копируем конфигурационные файлы Apache
COPY ./000-default.conf /usr/local/apache2/conf/httpd.conf

# Копируем HTML файлы в директорию DocumentRoot
COPY ./html/ /var/www/task3/html/

# Expose the port Apache will listen on
EXPOSE 8080
