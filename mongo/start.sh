#! /bin/bash

docker pull mongo

docker continer rm --force my-mongodb-v0.1

docker run --name my-mongodb-v0.1 -p 27017:27017 -v $PWD/db:/data/db -d mongo --auth


# 本机开启mongo shell
# 创建好db、user后，开启auth选项即可
