# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Acme-Terror-UK.t'

#########################

use Test::More tests => 3;
BEGIN { use_ok('Acme::Terror::UK') };

#########################

my $t;

ok($t = Acme::Terror::UK->new(), "Create Object");

ok($t->level(), "Can't get current threat level");
