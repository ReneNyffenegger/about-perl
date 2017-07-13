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

print "\n-----------------\n";

#
# Note: call the static method with preceding
# double colons, not with ->
#
Base::static_('S');
