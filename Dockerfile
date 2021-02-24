FROM debian:buster

MAINTAINER Bruno Binet <bruno.binet@helioslite.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install -yq --no-install-recommends golang-cfssl ca-certificates

ADD config.json /etc/cfssl/config.json

EXPOSE 8888

CMD ["/usr/bin/cfssl"]
