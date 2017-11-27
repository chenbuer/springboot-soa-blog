创建mysql的docker容器方法：
1. 下载的docker镜像：docker pull registry.alauda.cn/alauda/mysql     (我的镜像直接利用的[灵雀云的mysql镜像](https://hub.alauda.cn/repos/alauda/mysql))
2. 启动docker run --name mysql -d -p 3306:3306 22be5748ecbe
这样可能报错，不防用docker logs mysql 来查看一下日志，是因为没有设置密码的环境变量，所以可以docker run如下
docker run --name mysql -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret-pw 22be5748ecbe 

创建了mysql的容器之后，有两件事情需要去做：

1. 需要修改root登录权限（直接修改成可以远程访问：其实这样是不对的，但是方便本机图形化查看数据库）：
> GRANT ALL PRIVILEGES ON \*.\* TO 'root'@'%' IDENTIFIED BY '123456' WITH GRANT OPTION;

> FLUSH PRIVILEGES

2. 另外还需要将数据导入到数据库。数据dump出来就是本地的db_blog.sql文件。
