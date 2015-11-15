FROM davidkarlsen/docker-java:8u66

MAINTAINER David J. M. Karlsen <david@davidkarlsen.com>

#install heroku toolbelt to get foreman:
#RUN wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
#no longer available through heroku toolbelt - so install ourselves
#specific version, due to: https://github.com/ddollar/foreman/issues/561
RUN apt-get update && apt-get install -y ruby && gem install foreman --version "= 0.76.0" && rm -rf /var/lib/apt

