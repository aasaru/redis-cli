FROM alpine

ARG REDIS_VERSION
ARG REDIS_DOWNLOAD_URL="http://download.redis.io/releases/redis-${REDIS_VERSION}.tar.gz"

RUN apk update && apk upgrade \
    && apk add --update --no-cache --virtual build-deps gcc make linux-headers musl-dev openssl-dev tar \
    && echo "Downloading redis from $REDIS_DOWNLOAD_URL" \
    && wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" \
    && mkdir -p /usr/src/redis \
    && tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 \
    && rm redis.tar.gz \
    && export BUILD_TLS=yes \
    && make -C /usr/src/redis install redis-cli /usr/bin \
    && rm -r /usr/src/redis \
    && apk del build-deps \
    && rm -rf /var/cache/apk/*

CMD  ["redis-cli"]
