#! /bin/bash

docker pull mongo

docker container rm --force my-mongodb-v0.1

docker run --name my-mongodb-v0.1 -p 27017:27017 -v $PWD/db:/data/db -d mongo --auth


# 初次启动，需要删掉--auth选项，进入mongo shell后创建好用户，下次启动再开启--auth选项


#use dbname 
#db.createUser({
#... user:"username",
#... pwd:"helloworld",
#... roles:[{role:"readWrite",db:"dbname"}],
#... passwordDigestor:"server",
#... }
#... )

#mongo -u username -p helloworld --authenticationDatabase dbname

