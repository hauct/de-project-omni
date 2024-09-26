FROM jupyter/all-spark-notebook

USER root 

RUN curl -O https://archive.apache.org/dist/spark/spark-3.5.2/spark-3.5.2-bin-hadoop3.tgz \
    && tar zxvf spark-3.5.2-bin-hadoop3.tgz \
    && rm -rf spark-3.5.2-bin-hadoop3.tgz \
    && mv spark-3.5.2-bin-hadoop3/ /usr/local/ \
    && rm -rf /usr/local/spark \
    && rm -rf /usr/local/spark-3.3.0-bin-hadoop3 \
    && ln -s /usr/local/spark-3.5.2-bin-hadoop3 /usr/local/spark

RUN curl -O https://repo1.maven.org/maven2/software/amazon/awssdk/s3/2.20.0/s3-2.20.0.jar \
    && curl -O https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk/1.12.772/aws-java-sdk-1.12.772.jar \
    && curl -O https://repo1.maven.org/maven2/com/amazonaws/aws-java-sdk-bundle/1.12.772/aws-java-sdk-bundle-1.12.772.jar \
    && curl -O https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-aws/3.4.0/hadoop-aws-3.4.0.jar \
    && curl -O https://repo1.maven.org/maven2/org/apache/hadoop/hadoop-common/3.4.0/hadoop-common-3.4.0.jar \
    && curl -O https://repo1.maven.org/maven2/io/delta/delta-core_2.12/2.4.0/delta-core_2.12-2.4.0.jar \
    && curl -O https://repo1.maven.org/maven2/io/delta/delta-storage/2.4.0/delta-storage-2.4.0.jar \
    && mv s3-2.20.0.jar /usr/local/spark/jars \
    && mv aws-java-sdk-1.12.772.jar /usr/local/spark/jars \
    && mv aws-java-sdk-bundle-1.12.772.jar /usr/local/spark/jars \
    && mv hadoop-aws-3.4.0.jar /usr/local/spark/jars \
    && mv hadoop-common-3.4.0.jar /usr/local/spark/jars \
    && mv delta-core_2.12-2.4.0.jar /usr/local/spark/jars \
    && mv delta-storage-2.4.0.jar /usr/local/spark/jars

RUN pip install minio==7.2.9 \
    dagster==1.8.8