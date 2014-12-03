use warnings;
use strict;

my $string = 'ABC';

print "Hexadecimal representation of $string: " . unpack('H*', $string) . "\n";
