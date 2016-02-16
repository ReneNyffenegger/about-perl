use warnings;
use strict;


my $f = sub {

  my $x = shift;
  my $y = shift;
  
  return $x * $y;

};

my $res_1 = &{$f}(4,5);
my $res_2 = $f->(7,6);

print "res_1 = $res_1, res_2 = $res_2\n";

my $g = sub {

  my $x        = shift;
  my $y        = shift;
  my $operator = shift;

  return $operator->($x, $y);

};

print "3 * 5 = " . $g -> (3, 5, $f) . "\n";
