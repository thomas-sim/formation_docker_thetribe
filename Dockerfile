FROM nginx

LABEL maintainer="Thomas"

COPY nginx.conf /etc/nginx/nginx.conf
VOLUME /var/log/nginx

EXPOSE 80
