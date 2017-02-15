#!/usr/bin/perl
use warnings;
use strict;

my $g = 99;

foreach my $g (1..5) {
  p($g);
}
    
sub p {
  my $l = shift;
  printf ("%2d %2d\n", $g, $l);
}
