FROM index.alauda.cn/tutum/centos
MAINTAINER chenbuer <chenzy08@126.com>
EXPOSE 80
RUN mkdir -p /home/zookeeper && mkdir -p /usr/zookeeper/

WORKDIR /home/zookeeper

# 添加jdk并设置环境变量(zookeeper也用到了java)
ADD ./jdk8 /usr/jdk8
ENV JAVA_HOME /usr/jdk8
ENV CLASSPATH .:$JAVA_HOME/lib:$JAVA_HOME/jre/lib:$CLASSPATH
ENV PATH $JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH
RUN chmod 777 -R /usr/jdk8

# 添加zookeeper，设置环境变量
ADD ./zookeeper3.4.8 /usr/zookeeper
RUN chmod -R 777 /usr/zookeeper
ENV ZOOKEEPER_HOME=/usr/zookeeper
ENV PATH=$PATH:$ZOOKEEPER_HOME/bin
ADD ./zoo.cfg /usr/zookeeper/conf


ADD run.sh /home/zookeeper
RUN chmod 777 /home/zookeeper/run.sh

#CMD ./run.sh
