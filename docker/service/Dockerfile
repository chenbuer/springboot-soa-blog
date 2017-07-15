FROM index.alauda.cn/tutum/centos
MAINTAINER chenbuer <chenzy@126.com>
EXPOSE 8080
RUN  mkdir -p /home/service && mkdir -p /data/ && mkdir -p /usr/jdk8

WORKDIR /home/service

# 添加jdk并设置环境变量
ADD ./jdk8 /usr/jdk8
ENV JAVA_HOME /usr/jdk8
ENV CLASSPATH .:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH
ENV PATH $JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH 
RUN chmod 777 -R /usr/jdk8

# 将jar包拷贝过来
ADD ./springboot-soa-blog-service-0.0.1-SNAPSHOT.jar /home/service
RUN chmod 777 springboot-soa-blog-service-0.0.1-SNAPSHOT.jar

# 拷贝运行脚本
ADD run.sh /home/service
RUN chmod 777 /home/service/run.sh

#CMD ./run.sh
