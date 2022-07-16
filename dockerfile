FROM alpine:3.15
LABEL maintainer="ANSELME Containers <thiago@anselme.com.br>"

ENV ANSELMELOG=true

COPY default.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/nginx.conf
VOLUME /var/www/html/

COPY docker-entrypoint.sh /
ENTRYPOINT ["./docker-entrypoint.sh"]
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
