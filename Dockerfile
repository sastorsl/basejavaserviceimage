FROM davidkarlsen/docker-java:8u111

MAINTAINER David J. M. Karlsen <david@davidkarlsen.com>

RUN apt-get update && \
    apt-get -y install curl daemontools git && \
    apt-get clean
#URL changed, see: https://github.com/gliderlabs/herokuish/issues/187
RUN curl --silent -L https://github.com/gliderlabs/herokuish/releases/download/v0.3.21/herokuish_0.3.21_linux_x86_64.tgz | tar -xzvC /usr/local/bin
RUN wget https://releases.hashicorp.com/envconsul/0.6.1/envconsul_0.6.1_linux_amd64.zip -O - |funzip > /usr/local/bin/envconsul && \
    chmod a+x /usr/local/bin/envconsul
RUN useradd -m -d /app app
