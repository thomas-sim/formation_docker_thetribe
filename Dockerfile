FROM alpine:latest

RUN apk add nodejs npm

RUN npm i -g serve

# exposer le port de serve
EXPOSE 3000

COPY index.html .

CMD ["serve"]
