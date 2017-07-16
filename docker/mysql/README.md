创建了mysql的容器之后，有两件事情需要去做：

1. 需要修改root登录权限（直接修改成可以远程访问：其实这样是不对的，但是方便本机图形化查看数据库）：
> GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '123456' WITH GRANT OPTION;

> FLUSH PRIVILEGES

2. 另外还需要将数据导入到数据库。数据dump出来就是本地的db_blog.sql文件。