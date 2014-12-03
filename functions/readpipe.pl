use warnings;
use strict;


my @lines;

if ($^O eq 'MSWin32') {
  @lines = readpipe(" type $0");
}
else {
# Assume Unix...
  @lines = readpipe(" cat $0" );
}

for my $line (@lines) {
  print ". $line";
}
