use warnings;
use strict;

my %h = (
  'one'   => 'foo',
  'two'   => 'bar',
  'three' => 'baz'
);


while ( my ($k, $v) = each %h) {
  printf ("%-5s -> %s\n", $k, $v);
}

print "-------------------\n";

my @a = qw(abc de fgh ij);

while (my ($i, $e) = each(@a)) {
  print "$i: $e\n";
}
