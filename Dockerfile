FROM davidkarlsen/docker-java:8u77

MAINTAINER David J. M. Karlsen <david@davidkarlsen.com>

RUN curl --silent http://dl.gliderlabs.com/herokuish/latest/linux_x86_64.tgz | tar -xzC /usr/local/bin
