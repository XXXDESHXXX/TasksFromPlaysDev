FROM nginx:1.26.2-alpine

COPY /opt/TasksFromPlaysDev/Docker/Nginx_Conf/Task12/nginx/conf.d/* /etc/nginx/conf.d/
COPY /opt/TasksFromPlaysDev/Docker/Nginx_Conf/Task12/letsencrypt/ /etc/letsencrypt/
COPY /opt/TasksFromPlaysDev/Docker/Nginx_Conf/Task12/var/www/ /var/www/
COPY /opt/TasksFromPlaysDev/Docker/Nginx_Conf/Task12/nginx/nginx.conf /etc/nginx/

RUN chown -R nginx:nginx /etc/nginx /etc/letsencrypt /var/www /var/cache/nginx/ /var/log/nginx /run && \ 
    chmod -R 755 /etc/nginx /etc/letsencrypt /var/www /var/cache/nginx/ /var/log/nginx /run

USER nginx

EXPOSE 443 80