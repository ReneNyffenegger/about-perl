use warnings;
use strict;
use feature 'say';

for (my $id=3; $id<10; $id++) {
  say $id;
}

# --

say 'print 10 random numbers';

say rand for (1 .. 10);
