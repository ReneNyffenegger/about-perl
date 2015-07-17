use warnings;
use strict;


my $i = 0;

while ($i++ < 10) {

  print $i, "\n";

  if ($i == 3) {

    $i = 6;
    redo;

  }

}

# 1
# 2
# 3
# 6
# 7
# 8
# 9
# 10
