# Используем официальный образ PHP с Apache
FROM php:8.1-apache

# Копируем содержимое директории src в директорию, обслуживаемую Apache
COPY ./var/var/www/task3/html/ /var/www/html/

# Меняем порт Apache на 8080 и устанавливаем DirectoryIndex
RUN chown -R www-data:www-data /var/www/html \
    && sed -i 's/80/8080/g' /etc/apache2/sites-available/000-default.conf \
    && sed -i 's/80/8080/g' /etc/apache2/ports.conf \
    && echo 'DirectoryIndex info.php' >> /etc/apache2/sites-available/000-default.conf

EXPOSE 8080

USER www-data
CMD ["apache2-foreground"]
