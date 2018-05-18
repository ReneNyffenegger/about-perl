#!/usr/bin/perl

use warnings;
use strict;

my @l = (
  'foo bar baz',
  'one two three',
  '123 456 789 0',
  'ding dong',
  'twenty-two: 42'
);

#
# Use a regular expression to filter the
# elements that have at least a numerical
# character:
#
my @grepped = grep {$_ =~ /\d/} @l;

print join "\n", @grepped;
#
# 123 456 789 0
# twenty-two: 42
