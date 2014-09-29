use warnings;
use strict;

my %d;

$d{a} = undef;
$d{b} = 2;


e('a');
e('b');
e('c');
# a  exists
# b  defined  exists
# c



sub e {

  my $k = shift;

  print "$k  ";

  print "defined  " if defined $d{$k};
  print "exists"    if exists  $d{$k};

  print "\n";

}
