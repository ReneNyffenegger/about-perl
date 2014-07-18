use warnings;
use strict;

use Lingua::EN::Numbers qw(num2en_ordinal);

my @csv_like_array = qw (
one;4;1
two;8;2
three;9;3
four;5;4
five;2;5
six;1;6
seven;6;7
eight;3;8
nine;7;9
);

# sort_on_nth_column(1); # TOOD, currently not possible as <=> is used in column_value(). The first column would require a «cmp».
sort_on_nth_column(2);
sort_on_nth_column(3);

sub sort_on_nth_column { # {{{

  my $n = shift;

  print "\n\nSort on " . num2en_ordinal($n) . " column\n\n";

  my @sorted = sort { column_value($n-1) } @csv_like_array;
  
  # print "count after: " . scalar @a . "\n";
  
  print join "\n", @sorted;
  
} # }}}

sub column_value { # {{{

    my $col = shift;

    (split(";", $a))[$col] <=> 
    (split(";", $b))[$col]
} # }}}
