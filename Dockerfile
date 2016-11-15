FROM davidkarlsen/docker-java:8u111

MAINTAINER David J. M. Karlsen <david@davidkarlsen.com>

COPY entrypoint.sh /
RUN apt-get update && \
    apt-get -y install curl daemontools git gosu && \
    apt-get clean && \
    curl --silent -L https://github.com/gliderlabs/herokuish/releases/download/v0.3.21/herokuish_0.3.21_linux_x86_64.tgz | tar -xzvC /usr/local/bin && \
    wget https://releases.hashicorp.com/envconsul/0.6.1/envconsul_0.6.1_linux_amd64.zip -O - |funzip > /usr/local/bin/envconsul && \
    chmod a+x /usr/local/bin/envconsul
ENTRYPOINT ["/entrypoint.sh"]
