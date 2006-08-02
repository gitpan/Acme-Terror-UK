package Acme::Terror::UK;

## Get and return the current UK terrorist threat status.
## Robert Price - http://www.robertprice.co.uk/

use 5.00503;
use strict;

use LWP::Simple;

use vars qw($VERSION);
$VERSION = '0.01';


sub new {
	my ($class, %args) = @_;
	$class = ref($class)	if (ref $class);
	return bless(\%args, $class);
}

sub fetch {
	my $url = 'http://www.homeoffice.gov.uk/security/current-threat-level/';
	my $html = get($url);
	my ($lvl) = ($html =~ m|<h3 style="text-align: left">The current threat level is (.*?)</h3>|sg);
	return $lvl;
}

1;
__END__

=head1 NAME

Acme::Terror::UK - Fetch the current UK terror alert level

=head1 SYNOPSIS

  use Acme::Terror::UK;
  my $t = Acme::Terror::UK->new();  # create new Acme::Terror::UK object

  my $level = $t->fetch;
  print "Current terror alert level is: $level\n";

=head1 DESCRIPTION

Gets the currrent terrorist threat level in the UK.

The levels are either...
 CRITICAL - an attack is expected imminently 
 SEVERE - an attack is likely
 SUBSTANTIAL - an attack is a strong possibility
 MODERATE - an attack is possible but not likely
 LOW - an attack is unlikely


This module aims to be compatible with the US version, Acme::Terror

=head1 BUGS

This module just screenscrapes the home office website so is vulnerable
to breaking if the page design changes.

=head1 SEE ALSO

Acme::Terror
http://www.homeoffice.gov.uk/security/current-threat-level/

=head1 AUTHOR

Robert Price, E<lt>rprice@cpan.orgE<gt>


=head1 COPYRIGHT AND LICENSE

Copyright (C) 2006 by Robert Price

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.7 or,
at your option, any later version of Perl 5 you may have available.


=cut
