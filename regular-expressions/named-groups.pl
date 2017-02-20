#!/usr/bin/perl
use warnings;
use strict;

my $text = 'foo 42 baz';

# Naming a matched portion:
#
$text =~ /(?<num>\d+)/;
print "number found: $+{num}\n";
#
# number found: 42


$text = 'abc foo OF bar and baz IN foo etc';

# Two named groups with the same name (»where«):
#
while ($text =~ /foo OF (?<where>\w+)|(?<where>\w+) IN foo/g) {
  print "where: $+{where}\n";
}
#
# where: bar
# where: baz


$text = 'ab <TAG-ONE>cd efg<TAG-TWO>hi jkl</TAG-TWO>mn opq<TAG-THREE>rst</TAG-THREE>uv</TAG-ONE>wx<TAG-FOUR>yz</TAG-FOUR>';

# Using \k'name' to refer to a named match in the pattern where
# the name was defined.
#
$text =~ m|<(?<tagname>[^>]+)>(?<content>.*)</\k'tagname'|;
print "$+{content}\n";
#
# cd efg<TAG-TWO>hi jkl</TAG-TWO>mn opq<TAG-THREE>rst</TAG-THREE>uv
