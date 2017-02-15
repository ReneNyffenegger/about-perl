#!/usr/bin/perl
use warnings;
use strict;


for my $i (1 .. 10) {

  print "$i\n";

  do_what_i_mean() if $i == 5;

}


sub do_what_i_mean {

  # The implementation of this sub is trivial
  # and left as an exercise for the reader

 ... # yada-yada

}
