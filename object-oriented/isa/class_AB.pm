package class_AB;
use warnings;
use strict;

our @ISA = qw(class_A class_B);

sub new { #_{

  my $class = shift;
  my $self  = {};
  bless $self, $class;

  return $self;

} #_}

1;
