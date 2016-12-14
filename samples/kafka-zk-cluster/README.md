# Sample: Zookeeper cluster with Kafka

Tool: Docker Compose

## How to run it

```bash
docker-compose up -d
```

This will create a Zookeeper cluster with 3 nodes `zookeeper1`, `zookeeper2` 
and `zookeeper3`. A Kafka service will be using this cluster. 

You can scale the Kafka service using:

```bash
docker-compose scale kafka=3
```