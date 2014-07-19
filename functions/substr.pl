#
#   substr EXPR, OFFSET, LENGTH, REPLACEMENT
#   substr EXPR, OFFSET, LENGTH
#   substr EXPR, OFFSET
#
use warnings;
use strict;

use feature 'say';

my $expr = '0123456789';

say substr($expr,  0,  4);           #   0123
say substr($expr,  5,  3);           #   567
say substr($expr,  7    );           #   789
say substr($expr, -4    );           #   6789
say substr($expr, -4,  2);           #   67
say substr($expr,  5, -2);           #   567
say substr($expr,  8, 20);           #   89

    substr($expr,  4,  3, "abc"); 
       say $expr;                    #   0123abc789
    substr($expr,  4,  3) = "456";
       say $expr;                    #   0123456789
