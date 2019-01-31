FROM ubuntu:16.04

MAINTAINER xyz.zhangnan@gmail.com

RUN apt update && apt upgrade && apt -y install redis-server

EXPOSE 6379

RUN echo "requirepass helloworld" > /etc/redis.conf

ENTRYPOINT ["/usr/bin/redis-server","/etc/redis.conf"]
