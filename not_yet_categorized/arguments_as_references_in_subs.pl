#!/usr/bin/perl

use warnings;
use strict;

my $value = 'foo';

s1( $value); print "$value\n";
s2(\$value); print "$value\n";
s3( $value); print "$value\n";

sub s1 {
  $_[0] .= ' changed';
}

sub s2 {
  my $val = shift;

  $$val = uc($$val);
}

sub s3 {

  my $val = \shift;

  $$val = reverse($$val);
}
