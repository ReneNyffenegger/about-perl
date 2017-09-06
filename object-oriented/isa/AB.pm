package AB;
use warnings;
use strict;

our @ISA = qw(A B);

sub new { #_{

  my $class = shift;
  my $self  = {};
  bless $self, $class;

  return $self;

} #_}

1;
