use warnings;
use strict;

open (my $f, '<', $0) or die;

my $first_line  = <$f>;
my $second_line = <$f>;


seek ($f, -length($second_line), 1);

my $second_line_again = <$f>;

print $second_line_again;
