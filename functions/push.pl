#!/usr/bin/perl

use warnings;
use strict;

my @l = ('foo', 'bar');
push @l, 'baz';

my $cnt_elems_after = push @l, qw(one two three);

print join "\n", @l;

printf("\n\n\@l contains $cnt_elems_after elements\n");
