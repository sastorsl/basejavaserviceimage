FROM davidkarlsen/docker-java:ubuntu

MAINTAINER David J. M. Karlsen <david@davidkarlsen.com>

RUN curl --silent http://dl.gliderlabs.com/herokuish/latest/linux_x86_64.tgz | tar -xzC /usr/local/bin
RUN useradd -m -d /app app
RUN apt-get update && \
    apt-get -y install daemontools git && \
    apt-get clean
