# Используем официальное изображение Apache как основу
FROM httpd:latest

# Копируем наш конфигурационный файл в контейнер
COPY 000-default.conf /usr/local/apache2/conf/httpd.conf

# Копируем наши HTML файлы в контейнер
COPY html /var/www/task3

RUN mkdir -p /var/log/apache2 && \
    chown -R www-data:www-data /var/log/apache2

# Запуск Apache
CMD ["httpd-foreground"]