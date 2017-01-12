#!/usr/bin/perl
use warnings;
use strict;

my @array = qw(zero one two three four five six seven);

my @two_to_five = splice @array, 2, 3;

print join "\n", @two_to_five;
# two
# three
# four

print "\n\n";
print join "\n", @array;
# zero
# one
# five
# six
# seven

@two_to_five = qw(foo bar baz);

splice @array, 1, 3, qw(Foo Bar Baz);

print "\n\n";
print join "\n", @array;
# zero
# Foo
# Bar
# Baz
# seven
