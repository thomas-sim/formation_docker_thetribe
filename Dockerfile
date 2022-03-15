FROM alpine:latest

RUN apk add nodejs

COPY coucou.js .

CMD ["node", "coucou.js"]
