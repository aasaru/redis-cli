Forked from [Goodsmileduck/redis-cli](https://github.com/Goodsmileduck/redis-cli) to provide redis-cli based on all Redis versions available in 
[Redis downloads](http://download.redis.io/releases/)


# Getting started



## Installation

Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/aasaru/alpine-redis-cli) and is the recommended method of installation.

```bash
docker pull aasaru/alpine-redis-cli:6.0.4
```
where 6.0.4 is your desired Redis version.


Alternatively you can build the image yourself.

```bash
docker build -t aasaru/alpine-redis-cli github.com/aasaru/alpine-redis-cli --build-arg REDIS_VERSION=6.0.4
```

## Quickstart

Try connect alpine-redis-cli to localhost with default port :

```bash
docker run --name alpine-redis-cli -it aasaru/alpine-redis-cli
```

## Command-line arguments

You can customize the launch command of Redis server by specifying arguments to `alpine-redis-cli` on the `docker run` command. For example the following command will ping to `hostname` with port `6379` and will delete container after finish:

```bash
docker run --rm --name alpine-redis-cli --it aasaru/alpine-redis-cli alpine-redis-cli -h hostname -p 6379 ping
```

