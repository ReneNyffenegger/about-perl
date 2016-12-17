#
#   See also Devel::Symdump
#
use warnings;
use strict;

my  $VAR_ONE = 'foo'; # Not in symbol table
our $VAR_TWO = 'bar'; #     in symbol table

for my $symbol (sort keys %main::) {
  printf "%-50s: %s\n", $symbol, $main::{$symbol};
}
