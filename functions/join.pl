#
#   join EXPR, LIST
#
use warnings;
use strict;

my $joined = join "\n", qw(abc def ghi jkl);

print $joined;

__END__
abc
def
ghi
jkl
