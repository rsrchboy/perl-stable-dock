# This software is Copyright (c) 2014 by Chris Weyl <chris.weyl@wps.io>
#
# This work is licensed under a Creative Commons Attribution-ShareAlike 4.0
# International License (CC-BY-SA-4.0).
#
# http://creativecommons.org/licenses/by-sa/4.0/

FROM rsrchboy/perl-stable:latest
MAINTAINER Chris Weyl <chris.weyl@wps.io>

RUN apt-get update && apt-get install -y libmysqlclient-dev libssl-dev libxml-dev
#RUN perlbrew lib create main && perlbrew list && perlbrew switch ${TARGET_PERL}@main
RUN cpanm -q --notest Capture::Tiny      && rm -rf ~/.cpanm
RUN cpanm -q DBI DBD::mysql              && rm -rf ~/.cpanm
RUN cpanm -q DBIx::Class                 && rm -rf ~/.cpanm
RUN cpanm -q DBIx::Class::Schema::Loader && rm -rf ~/.cpanm
RUN cpanm -q Reindeer                    && rm -rf ~/.cpanm
RUN cpanm -q Dist::Zilla                 && rm -rf ~/.cpanm
RUN cpanm -q Task::Plack                 && rm -rf ~/.cpanm
RUN cpanm -q Task::Catalyst              && rm -rf ~/.cpanm
