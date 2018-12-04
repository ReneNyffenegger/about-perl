#!/usr/bin/perl
use warnings;
use strict;

#
# We're going to print utf 8 characters,
# not ascii characters:
#
binmode STDOUT, ':utf8';

#
#   Make sure chr(…) returns a utf8 rather
#   than a ascii character:
#
use 5.014;

for my $x (0 .. 15) {
  for my $y (0 .. 15) {

    my $c = chr($x * 16 + $y);

    if ($c =~ /\w/) {
      print "  $c";
    }
    else {
      print "  .";
    }

  }
  print "\n";
}
