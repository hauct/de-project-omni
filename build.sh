SPARK_VERSION="3.5.2"
HADOOP_VERSION="3"
JUPYTERLAB_VERSION="4.2.5"

# -- Building the Images
docker build \
  -f docker_image/spark/Dockerfile \
  -t spark docker_image/spark/