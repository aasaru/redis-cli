# About

Redis-Cli on Alpine with TLS support. 


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
docker run --rm --name redis-cli -it aasaru/alpine-redis-cli redis-cli -h localhost -p 6379
```

And same with TLS:

```bash
docker run --rm --name redis-cli -it aasaru/alpine-redis-cli redis-cli -h localhost -p 6379 --tls --cacert ./certs/ca_certificate.pem --cert ./certs/client_certificate.pem --key ./certs/client_key.pem ping
```


# Origin

Forked from [Goodsmileduck/redis-cli](https://github.com/Goodsmileduck/redis-cli)
with following improvements
* enable TLS support
* make Redis version configurable as build arg
* in Dockerhub provide redis-cli images based on all recent Redis versions available in [Redis downloads](http://download.redis.io/releases/)
