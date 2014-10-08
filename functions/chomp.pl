use warnings;
use strict;

use feature 'say';

my $v = "foo\nbar\n";
say length($v);
# 8

chomp $v;
say length($v);
# 7

chomp $v;
say length($v);
# 7
