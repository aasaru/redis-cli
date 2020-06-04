Forked from [Goodsmileduck/redis-cli](https://github.com/Goodsmileduck/redis-cli) to provide redis-cli based on all Redis versions available in 
[Redis downloads](http://download.redis.io/releases/)


# Getting started



## Installation

Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/aasaru/alpine-redis-cli) and is the recommended method of installation.

```bash
docker pull aasaru/redis-cli:6.0.4
```
where 6.0.4 is your desired Redis version.


Alternatively you can build the image yourself.

```bash
docker build -t aasaru/redis-cli github.com/aasaru/redis-cli --build-arg REDIS_VERSION=6.0.4
```

## Quickstart

Try connect redis-cli to localhost with default port :

```bash
docker run --name redis-cli -it aasaru/redis-cli
```

## Command-line arguments

You can customize the launch command of Redis server by specifying arguments to `redis-cli` on the `docker run` command. For example the following command will ping to `hostname` with port `6379` and will delete container after finish:

```bash
docker run --rm --name redis-cli --it aasaru/redis-cli redis-cli -h hostname -p 6379 ping
```

