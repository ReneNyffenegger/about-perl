#!/usr/bin/perl

use warnings;
use strict;

my @l = ('foo', 'bar');
push @l, 'baz';

push @l, qw(one two three);

print join "\n", @l;
