use Test::More 'no_plan';

# Re: http://cpantesters.perl.org/show/Data-Omap.html#Data-Omap-0.06
#     FAIL  1698195 5.11.0 patch 34053 on Linux 2.6.21.5-smp (i686-linux-thread-multi-64int-ld)
#         http://www.nntp.perl.org/group/perl.cpan.testers/2008/06/msg1698195.html
#     FAIL  1691995 5.10.0 patch 34034 on Darwin 8.10.0 (darwin-thread-multi-64int-2level)
#         http://www.nntp.perl.org/group/perl.cpan.testers/2008/06/msg1691995.html
#     FAIL  1688786 5.10.0 patch 34034 on Linux 2.4.26 (i686-linux-thread-multi-64int-ld)
#         http://www.nntp.perl.org/group/perl.cpan.testers/2008/06/msg1688786.html
#     FAIL  1676094 5.8.8 on Netbsd 4.0 (i386-netbsd-thread-multi-64int)
#         http://www.nntp.perl.org/group/perl.cpan.testers/2008/06/msg1676094.html

# Re: http://cpantesters.perl.org/show/Data-Pairs.html#Data-Pairs-0.07
#     FAIL  1698209 5.11.0 patch 34053 on Linux 2.6.21.5-smp (i686-linux-thread-multi-64int-ld)
#         http://www.nntp.perl.org/group/perl.cpan.testers/2008/06/msg1698209.html
#     FAIL  1692139 5.10.0 patch 34034 on Darwin 8.10.0 (darwin-thread-multi-64int-2level)
#         http://www.nntp.perl.org/group/perl.cpan.testers/2008/06/msg1692139.html
#     FAIL  1688888 5.10.0 patch 34034 on Linux 2.4.26 (i686-linux-thread-multi-64int-ld)
#         http://www.nntp.perl.org/group/perl.cpan.testers/2008/06/msg1688888.html
#     FAIL  1700730 5.8.8 on Netbsd 4.0 (i386-netbsd-thread-multi-64int)
#         http://www.nntp.perl.org/group/perl.cpan.testers/2008/06/msg1700730.html

*alias = \&real;
sub real { "Hello, world." }
is( alias(), "Hello, world.", "Is alias defined?" );


# Re: http://cpantesters.perl.org/show/Data-Omap.html#Data-Omap-0.06
#     FAIL  1676094 5.8.8 on Netbsd 4.0 (i386-netbsd-thread-multi-64int)
#         http://www.nntp.perl.org/group/perl.cpan.testers/2008/06/msg1676094.html

# Re: http://cpantesters.perl.org/show/Data-Pairs.html#Data-Pairs-0.07
#     FAIL  1700730 5.8.8 on Netbsd 4.0 (i386-netbsd-thread-multi-64int)
#         http://www.nntp.perl.org/group/perl.cpan.testers/2008/06/msg1700730.html
#     FAIL  1692139 5.10.0 patch 34034 on Darwin 8.10.0 (darwin-thread-multi-64int-2level)
#         http://www.nntp.perl.org/group/perl.cpan.testers/2008/06/msg1692139.html

my @a = (0, 1, 2);
is( $#a, 2, "Is last subscript of \@a( @a ) == 2?" );

use Carp;
sub a_croak {
    my( $aref, $pos ) = @_;
    croak "\$pos($pos) too large" if $pos > $#$aref+1;
}

eval{ a_croak( \@a, 4 ); };
like( $@, qr/\$pos\(4\) too large/, "In a_croak(), is pos too large?" );

# Re: http://cpantesters.perl.org/show/Data-Pairs.html#Data-Pairs-0.07
#     FAIL  1698209 5.11.0 patch 34053 on Linux 2.6.21.5-smp (i686-linux-thread-multi-64int-ld)
#         http://www.nntp.perl.org/group/perl.cpan.testers/2008/06/msg1698209.html

sub a_howmany { my @a = ( 0, 1 ); return @a }
is( a_howmany(), 2, "Is a_howmany()( @{[a_howmany()]} ) == 2?" );


