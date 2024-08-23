FROM nginx:1.26.2-alpine

COPY ./nginx/conf.d/* /etc/nginx/conf.d/
COPY ./letsencrypt/ /etc/letsencrypt/
COPY ./var/www/ /var/www/
COPY ./nginx/nginx.conf /etc/nginx/

# RUN chown -R nginx:nginx /etc/nginx /etc/letsencrypt /var/www /var/cache/nginx/ /var/log/nginx /run && \ Может не работать если деплоишь в AWS 
#    chmod -R 755 /etc/nginx /etc/letsencrypt /var/www /var/cache/nginx/ /var/log/nginx /run Может не работать если деплоишь в AWS 

# Может не работать если деплоишь в AWS | USER nginx

EXPOSE 443 80