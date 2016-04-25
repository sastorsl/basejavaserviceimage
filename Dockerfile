FROM davidkarlsen/docker-java:8u92

MAINTAINER David J. M. Karlsen <david@davidkarlsen.com>

RUN apt-get update && \
    apt-get -y install curl daemontools git && \
    apt-get clean
RUN curl --silent http://dl.gliderlabs.com/herokuish/latest/linux_x86_64.tgz | tar -xzC /usr/local/bin
RUN wget https://releases.hashicorp.com/envconsul/0.6.1/envconsul_0.6.1_linux_amd64.zip -O - |funzip > /usr/local/bin/envconsul && \
    chmod a+x /usr/local/bin/envconsul
RUN useradd -m -d /app app
