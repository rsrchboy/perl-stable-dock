# This software is Copyright (c) 2014 by Chris Weyl <cweyl@alumni.drew.edu>.
#
# This is free software, licensed under:
#
# The GNU Lesser General Public License, Version 2.1, February 1999

FROM rsrchboy/perlbrew-base:latest
MAINTAINER Chris Weyl <chris.weyl@wps.io>

ENV TARGET_PERL_FULL 5.16.3
ENV TARGET_PERL      5.16

RUN perlbrew download $TARGET_PERL_FULL
RUN perlbrew install -j4 --as $TARGET_PERL $TARGET_PERL_FULL
RUN rm -rf /usr/local/perlbrew/build/*

RUN perlbrew switch $TARGET_PERL

ENV PATH /usr/local/perlbrew/perls/$TARGET_PERL/bin:$PATH
ENV MANPATH /usr/local/perlbrew/perls/$TARGET_PERL/man
ENV PERLBREW_MANPATH /usr/local/perlbrew/perls/$TARGET_PERL/man
ENV PERLBREW_PATH /usr/local/perlbrew/bin:/usr/local/perlbrew/perls/$TARGET_PERL/bin
ENV PERLBREW_PERL $TARGET_PERL

RUN perlbrew info
RUN perl -v
