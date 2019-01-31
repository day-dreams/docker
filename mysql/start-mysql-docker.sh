#! /bin/bash



docker container rm --force mysql-5.7

docker run -p 3306:3306 --name mysql-5.7 -e MYSQL_ROOT_PASSWORD="helloworld" \
-v $PWD/data:/var/lib/mysql \
-d mysql/mysql-server:5.7 \


#运行起来后要创建用户，按一下步骤即可
#docker exec -it mysql-5.7 bash
#mysql -uroot -p
#create user 'username'@'%' identified by 'password';
#grant all on *.* to 'username'@'%';
