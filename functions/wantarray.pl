#!/usr/bin/perl
use warnings;
use strict;

my ($foo, $bar, $baz) = W(); # wantarray: 1
my ($one_paranthesis) = W(); # wantarray: 1
my  $one              = W(); # wantarray: 0

my ($FOO, $BAR, $BAZ) = X(); # wantarray: 1
my ($ONE_PARANTHESIS) = X(); # wantarray: 1
my  $ONE              = X(); # wantarray: 0

sub X {
  return W();
}
sub W {
  printf "wantarray: %d\n", wantarray;
}
