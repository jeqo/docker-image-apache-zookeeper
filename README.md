# Docker image: Apache Zookeeper

Apache Zookeeper image with software installed and base configuration
to start a single node with Apache Zookeeper.

## Tags

* 3.5.2-alpha

* 3.4.9

* 3.4.8

## Ports Exposed

* 2181: Zookeeper service

* 2888: Zookeeper cluster port

* 3888: Zookeeper cluster port

## Volumes

* /var/zookeeper: Data directory

## How to build image

Run: 

```bash
ansible-playbook main.yml
```

If you want to build an older version (e.g. 3.4.8):

```bash
ansible-playbook main.yml -e @vars/zk-3.4.8.yml
```

## How to use this image

Go to `samples` directory