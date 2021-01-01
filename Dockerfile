FROM nginx:1.19-alpine

COPY Docker/nginx/templates/nginx.conf.template /etc/nginx/conf.d/default.conf.template
COPY Docker/nginx/nginx.conf /etc/nginx/nginx.conf

CMD /bin/sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf" && nginx -g 'daemon off;'
