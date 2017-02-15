#!/usr/bin/perl
use warnings;
use strict;
use feature 'say';

say match_to_end_of_sentence("Goerge, Ann and Peter went to the theater. They enjoyed it very much.");
#
# Goerge, Ann and Peter went to the theater.

say match_to_end_of_sentence("Also Dr. Hennson went there. But he didn't enjoy it.");
#
# Also Dr. Hennson went there.

sub match_to_end_of_sentence {

  my $text = shift;

  my ($sentence) = $text =~ /(.*?(?<!Dr)\.)/;

  return $sentence;
}
