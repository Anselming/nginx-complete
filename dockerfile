FROM alpine:3.15

RUN apk add --no-cache vim nano curl nginx bash wget
COPY default.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/nginx.conf
VOLUME /var/www/html/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]