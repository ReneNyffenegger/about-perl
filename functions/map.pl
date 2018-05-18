#!/usr/bin/perl

#
#   Note the special parsing rule for map:
#   curly braces don't create a hash.
#
use warnings;
use strict;

my @words = qw(one two three four five);

#
# Use map to create uppercase versions of the
# elements in a list:
#
my @uppercase_words = map {uc} @words;

print join "\n", @uppercase_words;
#
# ONE
# TWO
# THRE
# FOUR
# FIVE

# -------------------------------------

print "\n--\n";

#
# Check each element and return a translation if available
#
my @words_german = map { $_ eq 'one'   and 'eins' or
                         $_ eq 'two'   and 'zwei' or
                         $_ eq 'three' and 'drei' or
                         $_ eq 'four'  and 'four' or
                        '?'}  @words;

print join "\n", @words_german;
#
# eins
# zwei
# drei
# four
# ?
