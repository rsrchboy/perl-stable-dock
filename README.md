# Perl + Catalyst in a box!

This image contains perlbrew, cpanm, Task::Catalyst and the latest stable Perl
(as of building).

We're different from the other docker images in that we have a whole mess of
other modules installed as well, making this container suitable to quickly
setting up a working Catalyst app instance.

## Additional CPAN Packages Installed

* Capture::Tiny
* DBD::mysql
* DBI
* DBIx::Class
* DBIx::Class::Schema::Loader
* Dist::Zilla
* Reindeer (for Moose-y goodness!)
* Task::Catalyst
* Task::Plack

## Additional System Packages Installed

* libmysqlclient-dev
* libssl-dev
* libxml-dev

## Other Perls

If you're looking for pre-built images of other levels of Perl, check out
[RsrchBoy's Docker index][5] for more "trusted builds".

# Profit!

Enjoy.  Ideas / bugs / suggestions?  Feel free to
[submit issues or pull requests via github][4] :)

# Author and License

Copyright (c) 2014 by Chris Weyl \<chris.weyl@wps.io\>.

[![][51]][50]

This work is licensed under a [Creative Commons Attribution-ShareAlike 4.0 International License][50].

[![][2]][1] [![][100]][101]

Please note **I do not expect to be gittip'ed or flattr'ed** for this work,
but it is rather a very pleasant surprise.  I largely create and release works
like this because I need them or I find it enjoyable; however, don't let that
stop you giving me money if you feel like it ;)

[1]: https://flattr.com/submit/auto?user_id=RsrchBoy&url=https://github.com/RsrchBoy/gitolite-base-dock&title=Docker.io%20gitolite-base%20image&tags=docker "RsrchBoy's perl-stable-dock on index.docker.io"
[2]: http://api.flattr.com/button/flattr-badge-large.png "Flattr this if -- and only if -- you want :)"
[4]: https://github.com/RsrchBoy/perl-stable-dock/issues
[5]: https://index.docker.io/u/RsrchBoy
[50]: http://creativecommons.org/licenses/by-sa/4.0/ "Creative Commons License"
[51]: http://i.creativecommons.org/l/by-sa/4.0/88x31.png "Creative Commons License CC-BY-SA"
[52]: http://i.creativecommons.org/l/by-sa/4.0/80x15.png "Creative Commons License CC-BY-SA"
[100]: https://raw.githubusercontent.com/gittip/www.gittip.com/master/www/assets/%25version/logo.png
[101]: https://www.gittip.com/RsrchBoy/
