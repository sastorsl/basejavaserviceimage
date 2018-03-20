FROM davidkarlsen/docker-java:8u161
LABEL maintainer "David J. M. Karlsen <david@davidkarlsen.com>"
ARG OVERMIND_VERSION=v1.1.1
RUN apt update && \
    apt -y install curl daemontools git gosu vim net-tools nmap netcat iputils-ping tmux gzip && \
    apt clean && \
    curl --silent -L https://github.com/DarthSim/overmind/releases/download/${OVERMIND_VERSION}/overmind-${OVERMIND_VERSION}-linux-amd64.gz | zcat > /usr/local/bin/overmind && \
    useradd -c "application user" -d /app -s /bin/bash -m app && \
    find /var/cache/ -type f -delete
COPY entrypoint.sh /
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
