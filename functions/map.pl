#
#   Note the special parsing rule for map:
#   curly braces don't create a hash.
#
use warnings;
use strict;

my @words = qw(one two three four five);

my @uppercase_words = map {uc} @words;

print join "\n", @uppercase_words;

# --

print "\n--\n";

my @words_german = map { $_ eq 'one'   and 'eins' or
                         $_ eq 'two'   and 'zwei' or
                         $_ eq 'three' and 'drei' or
                         $_ eq 'four'  and 'four' or
                        '?'}  @words;

print join "\n", @words_german;

__END__
ONE
TWO
THRE
FOUR
FIVE
--
eins
zwei
drei
four
?
