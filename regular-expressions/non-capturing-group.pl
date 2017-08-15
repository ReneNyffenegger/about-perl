#!/usr/bin/perl
use warnings;
use strict;

use feature 'say';


say extract_number('abc 17 foo 42 more 999'              ); # 42
say extract_number('bar 201 xyz 3 88'                    ); # 201
say extract_number('hello world 1234 - number 17 baz 39.'); # 39


sub extract_number {
  # extract a number after foo, bar or baz

  my $text = shift;

  my ($num) = $text =~ /(?:foo|bar|baz) (\d+)/;
  return $num;
}
