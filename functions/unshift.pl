use warnings;
use strict;

my @foo = qw(three four five six);

unshift @foo, qw(one two);

print join "\n", @foo;

__END__
one
two
three
four
five
six
