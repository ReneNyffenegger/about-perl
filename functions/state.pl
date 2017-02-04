#!/usr/bin/perl
use warnings;
use strict;
use 5.10.0;

min_max_avg(15);
min_max_avg( 5);
min_max_avg( 7);

sub min_max_avg {

  state $min = +"Inf";
  state $max = -"Inf";
  state $sum = 0;
  state $cnt = 0;

  print "  min | max | cnt | avg\n" unless $cnt;

  my $num = shift;

  $sum += $num;
  $cnt ++;

  $min = $num if $num < $min;
  $max = $num if $num > $max;


  printf "  %3d | %3d | %3d | %3d\n", $min, $max, $cnt, $sum/$cnt;

}

# min | max | cnt | avg
#  15 |  15 |   1 |  15
#   5 |  15 |   2 |  10
#   5 |  15 |   3 |   9
