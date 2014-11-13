use warnings;
use strict;

use feature 'say';

say oct    '4';  # 4
say oct    '9';  # Illegal octal digit 9 ignored ...
say oct   '10';  # 8
say oct  'x11';  # 17
