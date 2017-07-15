FROM davidkarlsen/docker-java:8u131-1

LABEL maintainer "David J. M. Karlsen <david@davidkarlsen.com>"

ARG HEROKUISH_VERSION=0.3.31

RUN apt-get update && \
    apt-get -y install curl daemontools git gosu vim net-tools nmap netcat iputils-ping && \
    apt-get clean && \
    curl --silent -L https://github.com/gliderlabs/herokuish/releases/download/v${HEROKUISH_VERSION}/herokuish_${HEROKUISH_VERSION}_linux_x86_64.tgz | tar -xzvC /usr/local/bin && \
    wget https://releases.hashicorp.com/envconsul/0.6.2/envconsul_0.6.2_linux_amd64.zip -O - |funzip > /usr/local/bin/envconsul && \
    chmod a+x /usr/local/bin/envconsul && \
    useradd -c "application user" -d /app -s /bin/bash -m app && \
    find /var/cache/ -type f -delete
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
