# This software is Copyright (c) 2014 by Chris Weyl <chris.weyl@wps.io>
#
# This work is licensed under a Creative Commons Attribution-ShareAlike 4.0
# International License (CC-BY-SA-4.0).
#
# http://creativecommons.org/licenses/by-sa/4.0/

FROM rsrchboy/perlbrew-base:latest
MAINTAINER Chris Weyl <chris.weyl@wps.io>

ENV PERL5_PATCHPERL_PLUGIN BenchmarkVirtualError
RUN cpanm -q Devel::PatchPerl::Plugin::BenchmarkVirtualError && rm -rf $HOME/.cpanm/*

RUN for ver in perl-5.23.7 perl-5.22.1 perl-5.20.3 perl-5.18.4 perl-5.16.3 perl-5.14.4 perl-5.12.5 perl-5.10.1 perl-5.8.9 ; do \
            ( perlbrew install -j4 $ver || exit 1 ) && \
            perlbrew alias create $ver `echo $ver | sed 's/\..$//'` && \
            perlbrew alias create $ver `echo $ver | sed 's/\..$//; s/^perl-//'` && \
            rm -rf /usr/local/perlbrew/build/* ; \
        done

RUN perlbrew alias create perl-5.22.1 stable && perlbrew alias create perl-5.23.7 unstable
RUN perlbrew info
