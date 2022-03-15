FROM alpine:latest

ARG DEFAULT_PORT 3005
ENV PORT $DEFAULT_PORT

RUN apk add nodejs npm
RUN npm i -g serve
EXPOSE $PORT
RUN echo "bonjour je suis le port $PORT" > index.html
CMD serve -p $PORT

