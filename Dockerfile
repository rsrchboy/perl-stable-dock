# This software is Copyright (c) 2014 by Chris Weyl <cweyl@alumni.drew.edu>.
#
# This is free software, licensed under:
#
# The GNU Lesser General Public License, Version 2.1, February 1999

FROM rsrchboy/perlbrew-base:latest
MAINTAINER Chris Weyl <chris.weyl@wps.io>

# temporary workaround until github gugod/App-perlbrew#383 is merged
RUN perlbrew download 5.18.2
RUN perlbrew install --as stable stable
RUN rm -rf /usr/local/perlbrew/build/*

RUN perlbrew switch stable

ENV PATH /usr/local/perlbrew/perls/stable/bin:$PATH
ENV MANPATH /usr/local/perlbrew/perls/stable/man
ENV PERLBREW_MANPATH /usr/local/perlbrew/perls/stable/man
ENV PERLBREW_PATH /usr/local/perlbrew/bin:/usr/local/perlbrew/perls/stable/bin
ENV PERLBREW_PERL stable

RUN perlbrew info
RUN perl -v
