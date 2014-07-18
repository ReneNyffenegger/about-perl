use warnings;
use strict;

func_with_paramters('one', 2, 'three', 'IV');

sub func_with_paramters {

  print "func_with_paramters is being called with " . @_ . " parameters\n";

  print "Those parameters are:\n  ";
  
  print join "\n  ", @_;

# The default array for push, pop, shift and unshift within a sub is @_:

  my $first     = shift;
  my $second    = shift;
  my $third     = shift;
  my $fourth    = shift;

  print "\n\nshift'ed values $first   $second   $third   $fourth\n";

}
