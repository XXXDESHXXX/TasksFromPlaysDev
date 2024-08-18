FROM nginx:alpine

RUN apk update
RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx/conf.d/* /etc/nginx/conf.d/
COPY ./letsencrypt/ /etc/letsencrypt/
COPY ./var/www/ /var/www/
COPY ./nginx/nginx.conf /etc/nginx/

RUN chown -R nginx:nginx /etc/nginx /etc/letsencrypt /var/www && \
    chmod -R 755 /etc/nginx /etc/letsencrypt /var/www

EXPOSE 443