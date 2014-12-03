use warnings;
use strict;

my @l = (
  'foo bar baz',
  'one two three',
  '123 456 789 0',
  'ding dong',
  'twenty-two: 42'
);


my @grepped = grep {$_ =~ /\d/} @l;

print join "\n", @grepped;
