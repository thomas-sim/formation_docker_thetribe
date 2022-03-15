FROM alpine:latest

LABEL maintainer="Thomas"
ENV URL="ecosia.org"

WORKDIR /app

RUN adduser -S thomas
RUN chown -R thomas /app
USER thomas

CMD wget $URL && ls | xargs cat
