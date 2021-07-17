#!/usr/bin/perl
use warnings;
use strict;

my $x = '48656c6c6f20576f726c6421';

for (my $i = 0; $i<length($x); $i+=2) {
   my $a = chr(hex(substr($x, $i, 2)));
   print $a;
}

print "\n";
