#
#   Note the special parsing rule for map:
#   curly braces don't create a hash.
#
use warnings;
use strict;

my @words = qw(one two three four five);

my @uppercase_words = map {uc} @words;

print join "\n", @uppercase_words;
