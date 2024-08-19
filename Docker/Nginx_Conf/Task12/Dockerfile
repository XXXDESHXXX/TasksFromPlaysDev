FROM nginx:1.26.2-alpine

RUN apk update
RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx/conf.d/* /etc/nginx/conf.d/
COPY ./letsencrypt/ /etc/letsencrypt/
COPY ./var/www/ /var/www/
COPY ./nginx/nginx.conf /etc/nginx/

RUN chown -R nginx:nginx /etc/nginx /etc/letsencrypt /var/www /var/cache/nginx/ /var/log/nginx /run && \
    chmod -R 755 /etc/nginx /etc/letsencrypt /var/www /var/cache/nginx/ /var/log/nginx /run

USER nginx

EXPOSE  443
