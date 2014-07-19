#
#   rand EXPR
#   rand
#
use warnings;
use strict;

printf ("%4.9f\n", rand     ) for (1 .. 10);  # Print 10 random numbers between 0 and 1

print "\n\n";

printf ("%4.9f\n", rand 1000) for (1 .. 10);  # Print 10 random number between 0 and 1000
