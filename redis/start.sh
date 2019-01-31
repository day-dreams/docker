#! /bin/bash


docker build -t my-redis-v1.0 .

docker container rm --force my-redis-instance

docker run -d -p 6379:6379 \
    --name my-redis-instance \
    my-redis-v1.0

