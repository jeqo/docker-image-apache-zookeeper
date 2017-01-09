FROM openjdk:8-jre

MAINTAINER Jorge Quilcate <quilcate.jorge@gmail.com>

ARG zk_version
ARG zk_base_url

ENV ZK_VERSION ${zk_version:-3.4.9}
ENV ZK_BASE_URL ${zk_base_url:-http://apache.uib.no}
ENV ZK_URL "$ZK_BASE_URL/zookeeper/zookeeper-$ZK_VERSION/zookeeper-$ZK_VERSION.tar.gz"
ENV ZK_HOME /opt/zookeeper
ENV ZK_DATA /var/zookeeper

WORKDIR /opt

RUN wget -O - $ZK_URL | tar zxf - && \
    mv /opt/zookeeper-$ZK_VERSION $ZK_HOME

WORKDIR $ZK_HOME

COPY zoo.cfg conf/zoo.cfg

EXPOSE 2181 2888 3888

VOLUME $ZK_DATA

CMD ["bin/zkServer.sh", "start-foreground"]

HEALTHCHECK --interval=2s --timeout=3s \
  CMD bin/zkServer.sh status || exit 1
