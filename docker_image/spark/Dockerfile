FROM docker.io/bitnami/spark:3.5.2

USER root

# Install prerequisites
RUN apt-get update && apt-get install -y curl

RUN curl -O https://repo1.maven.org/maven2/software/amazon/awssdk/s3/2.20.0/s3-2.20.0.jar \
    && curl -O https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk/1.12.772/aws-java-sdk-1.12.772.jar \
    && curl -O https://repo1.maven.org/maven2/io/delta/delta-core_2.12/2.4.0/delta-core_2.12-2.4.0.jar \
    && curl -O https://repo1.maven.org/maven2/io/delta/delta-storage/2.4.0/delta-storage-2.4.0.jar \
    && curl -O https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.33/mysql-connector-java-8.0.33.jar \
    && curl -O https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.4.0/hadoop-aws-3.4.0.jar \
    && mv s3-2.20.0.jar /opt/bitnami/spark/jars \
    && mv aws-java-sdk-1.12.772.jar /opt/bitnami/spark/jars \
    && mv delta-core_2.12-2.4.0.jar /opt/bitnami/spark/jars \
    && mv delta-storage-2.4.0.jar /opt/bitnami/spark/jars \
    && mv mysql-connector-java-8.0.33.jar /opt/bitnami/spark/jars \
    && mv hadoop-aws-3.4.0.jar /opt/bitnami/spark/jars