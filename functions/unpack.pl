#!/usr/bin/perl
use warnings;
use strict;

my $string = 'ABC';

print "Hexadecimal representation of $string: " . unpack('H*', $string) . "\n";
#
# Hexadecimal representation of ABC: 414243
