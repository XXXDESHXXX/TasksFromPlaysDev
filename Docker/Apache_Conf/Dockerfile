# Используем официальный образ Apache
FROM httpd:2.4-alpine

# Обновляем пакеты и устанавливаем необходимые модули
RUN apk update && apk add --no-cache bash

# Копируем конфигурацию Apache в контейнер
COPY ./Apache_Conf/000-default.conf /usr/local/apache2/conf/httpd.conf

# Копируем файлы в нужную директорию веб-сервера
COPY ./Apache_Conf/html/ /usr/local/apache2/htdocs/

# Открываем порт 8080 для прослушивания запросов
EXPOSE 8080

# Запускаем Apache в режиме фореграунд
CMD ["httpd-foreground"]
