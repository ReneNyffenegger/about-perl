use warnings;
use strict;

if ($^O eq 'MSWin32') {

  my $dir =  qx {dir};
  print $dir;

}
else {

# Assume Unix...
  my $ls_l =  qx {ls -l};
  print $ls_l;

}
