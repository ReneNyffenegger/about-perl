use warnings;
use strict;
use feature 'say';

my $true  = 1;
my $false = 0;


if ($false and $true
      or
    $false
   ) {
   say 'This is not printed';
}
else {
   say 'This is printed';
}
