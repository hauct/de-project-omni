FROM bitsondatadev/hive-metastore:latest

# FROM openjdk:23-jre

# RUN apt-get update \
#  && apt-get install --assume-yes python3=3.12.6 python3-pip procps \
#  && apt-get clean

# RUN pip3 install pyspark~=3.5.2 pandas~=2.2.3

# RUN apt-get update \
#  && apt-get install --assume-yes telnet \
#  && apt-get clean

# WORKDIR /opt

# ENV HADOOP_VERSION=3.4.0
# ENV METASTORE_VERSION=4.0.0

# ENV HADOOP_HOME=/opt/hadoop-${HADOOP_VERSION}
# ENV HIVE_HOME=/opt/apache-hive-metastore-${METASTORE_VERSION}-bin

# RUN curl -L https://apache.org/dist/hive/hive-standalone-metastore-${METASTORE_VERSION}/hive-standalone-metastore-${METASTORE_VERSION}-bin.tar.gz | tar zxf - && \
#     curl -L https://archive.apache.org/dist/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz | tar zxf - && \
#     curl -L https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-9.0.0.tar.gz | tar zxf - && \
#     cp mysql-connector-java-9.0.0/mysql-connector-java-9.0.0.jar ${HIVE_HOME}/lib/ && \
#     rm -rf  mysql-connector-java-9.0.0

# COPY hive-metastore/metastore-site.xml ${HIVE_HOME}/conf
# COPY hive-metastore/entrypoint.sh /entrypoint.sh

# RUN groupadd -r hive --gid=1000 && \
#     useradd -r -g hive --uid=1000 -d ${HIVE_HOME} hive && \
#     chown hive:hive -R ${HIVE_HOME} && \
#     chown hive:hive /entrypoint.sh && chmod +x /entrypoint.sh

# USER hive
# EXPOSE 9083

# ENTRYPOINT ["sh", "-c", "/entrypoint.sh"]