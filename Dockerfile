FROM alpine:3.8
LABEL maintainer="mitsu-ksgr <k.sgr.mtisu.g@gmail.com>"

ENV DOCKER_MACHINE_VERSION=v0.15.0

RUN apk --no-cache update && \
    apk --no-cache upgrade && \
    apk add openssl ca-certificates && \
    wget https://github.com/docker/machine/releases/download/${DOCKER_MACHINE_VERSION}/docker-machine-$(uname -s)-$(uname -m) \
        -O /usr/local/bin/docker-machine && \
    chmod +x /usr/local/bin/docker-machine


ENTRYPOINT ["/usr/local/bin/docker-machine"]
CMD [""]

