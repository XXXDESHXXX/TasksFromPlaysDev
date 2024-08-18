# Используем официальное изображение nginx как основу
FROM nginx:latest

# Удаляем стандартную конфигурацию, чтобы использовать свою
RUN rm /etc/nginx/conf.d/default.conf

# Копируем главный конфигурационный файл nginx
COPY ./Nginx_Conf/nginx.conf /etc/nginx/nginx.conf

# Копируем конфигурации серверов в директорию sites-available
COPY ./Nginx_Conf/musifiyed /etc/nginx/sites-available/musifiyed

# Создаем директорию sites-enabled и создаем ссылку
RUN mkdir -p /etc/nginx/sites-enabled && \
    ln -s /etc/nginx/sites-available/musifiyed /etc/nginx/sites-enabled/musifiyed

# Копируем HTML файлы
COPY ./Nginx_Conf/html/ /var/www/task3/html/

# Открываем порт для HTTP
EXPOSE 80

# Команда для запуска nginx
CMD ["nginx", "-g", "daemon off;"]

