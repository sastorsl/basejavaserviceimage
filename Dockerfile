FROM davidkarlsen/docker-java:8u60

MAINTAINER David J. M. Karlsen <david@davidkarlsen.com>

#install heroku toolbelt to get foreman:
RUN wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

