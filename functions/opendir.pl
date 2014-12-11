use warnings;
use strict;

opendir (my $dh, '.') or die;

while (my $f = readdir($dh)) {
  printf "%-25s %7d\n", $f, -s $f if -f $f;
  printf "%-25s\n"    , $f        if -d $f;
}

closedir($dh);

