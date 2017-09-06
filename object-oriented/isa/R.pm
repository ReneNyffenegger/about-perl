package R;
use warnings;
use strict;

#
#  Cannot load this class, issues error:
#    Recursive inheritance failed in require at ...
#
our @ISA = qw(R);

sub new { #_{

  my $class = shift;
  my $self  = {};
  bless $self, $class;

  return $self;

} #_}

1;
