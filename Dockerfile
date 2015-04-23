FROM davidkarlsen/docker-java:8u45

MAINTAINER David J. M. Karlsen <david.karlsen@evry.com>

#install heroku toolbelt to get foreman:
RUN wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

