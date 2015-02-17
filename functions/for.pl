use warnings;
use strict;
use feature 'say';

for (my $id=3; $id<10; $id++) {
  say $id;
}

# --

say 'print 10 random numbers';

say rand for (1 .. 10);

# In place editing:

my @list = qw (abc def ghi);

for my $elem (@list) {
  $elem .= "-$elem";
}

print join "\n", @list;
# abc-abc
# def-def
# ghi-ghi
