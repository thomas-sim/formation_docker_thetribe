FROM nginx

LABEL maintainer="Thomas"

RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html

VOLUME /var/log/nginx

EXPOSE 80
