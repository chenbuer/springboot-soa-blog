这里主要介绍了几个微服务的docker run：


- zookeeper：

docker run --name zookeeper -dti -p 2181:2181 zookeeper:latest

- mysql的镜像直接从官网上下载的：（daocloud没有的5.6版本的mysql）

docker run --name mysql -e MYSQL_ROOT_PASSWORD=123456 -d -p 3306:3306 docker.io/mysql:5.6.35

- service

docker run --name service -dit -p 4444:4444 service:latest

- controller

docker run --name controller -dit -p 8080:8080 controller:latest

- view

docker run --name view -dit -p 80:80 -v /home/czy/view/dist:/data view:latest