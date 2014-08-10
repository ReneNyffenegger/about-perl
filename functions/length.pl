use warnings;
use strict;

print length('ä') . "\n";
# 2

use utf8;

print length('ä') . "\n";
# 1
