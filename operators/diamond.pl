use warnings;
use strict;


#
#  Read each line of each file given in @ARGV or, if empty, 
#  read from STDIN
#
#  Test:
#     perl diamond.pl slash_slash.pl does-not-exist.txt diamond.pl
#     perl diamond.pl
#
while (my $line = <>) {

  printf ("%4d: %s", $., $line);

}
