FROM httpd:2.4.62-alpine

# Обновляем пакеты
RUN apk update

# Копируем конфигурацию Apache (заменим путь на корректный для Alpine Linux)
COPY ./000-default.conf /usr/local/apache2/conf/

# Копируем сайт в директорию /var/www/html
COPY ./var/var/www/ /usr/local/apache2/htdocs/

# Создаем директорию для логов и устанавливаем права
RUN mkdir -p /usr/local/apache2/logs && \
    chown -R www-data:www-data /usr/local/apache2/htdocs/ /usr/local/apache2/logs && \
    chmod -R 755 /usr/local/apache2/htdocs/ /usr/local/apache2/logs

# Используем стандартного пользователя для Apache
USER www-data

# Экспонируем порт 8080
EXPOSE 8080

# Запускаем Apache
CMD ["httpd-foreground"]
