#!/usr/bin/perl
use warnings;
use strict;
use feature 'say';

my @ary = qw(foo bar baz);

for my $elm (@ary) {
  say($elm);
#
# $elm is aliased to the elements in the
# list being iterated over. Thus, the following
# statement changes the elements in @ary: 
#
  $elm = uc($elm);
}
# foo
# bar
# baz

# -------------------------------------------

#
# Iterating over @ary again to demonstrate
# that @ary now has uppercase elements:
#
for my $elm (@ary) {
  say($elm);
}
# FOO
# BAR
# BAZ
