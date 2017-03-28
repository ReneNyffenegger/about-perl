#!/usr/bin/perl
#
#   http://www.regular-expressions.info/captureall.html
#
use warnings;
use strict;

my $text = 'abc FOOFOOBARFOOBAZ etc';

if ($text =~ /(FOO|BAR|BAZ)+/) {
  print "$1\n";
# BAZ
}
if ($text =~ /((?:FOO|BAR|BAZ)+)/) {
  print "$1\n";
# FOOFOOBARFOOBAZ
}
