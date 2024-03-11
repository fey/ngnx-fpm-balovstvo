FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update -y && \
  apt install vim git nginx php-fpm -y

WORKDIR /app

CMD /app/run.sh
