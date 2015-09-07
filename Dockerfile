FROM davidkarlsen/docker-java:8u60

MAINTAINER David J. M. Karlsen <david@davidkarlsen.com>

#install heroku toolbelt to get foreman:
#RUN wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
#no longer available through heroku toolbelt - so install ourselves
RUN apt-get update && apt-get install -y ruby && gem install foreman && rm -rf /var/lib/apt

