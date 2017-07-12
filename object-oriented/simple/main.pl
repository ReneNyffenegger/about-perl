#!/usr/bin/perl
use warnings;
use strict;

use Base;
use Derived;

my $base = Base->new('B');

print "\n-----------------\n";

$base -> method;
$base -> overridden('b');

print "\n-----------------\n";

my $derived = Derived->new('D');

print "\n-----------------\n";

$derived -> method;

print "\n-----------------\n";

$derived -> overridden('d');
