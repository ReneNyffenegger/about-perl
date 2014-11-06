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


my @list = ("foo\n", "bar", "baz\n");
print join "-", @list;
# foo
# -bar-baz

chomp @list;
print join "-", @list;
# foo-bar-baz

