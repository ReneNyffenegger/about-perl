#!/usr/bin/perl
use warnings;
use strict;

my $text = 'foo 42 baz';

$text =~ /(?<num>\d+)/;
print "number found: $+{num}\n";
#
# number found: 42


$text = 'abc foo OF bar and baz IN foo etc';

# Two named groups with the same name (»where«):
while ($text =~ /foo OF (?<where>\w+)|(?<where>\w+) IN foo/g) {
  print "where: $+{where}\n";
}
#
# where: bar
# where: baz
