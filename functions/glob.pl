use warnings;
use strict;

print "Files *e*n*\n" ;
for my $file (glob ('*e*n*')) {
  print "  $file\n";
}

print "\nFiles *e* or *n*\n";
for my $file (glob ('*e* *n*')) {
  print "  $file\n";
}
