package class_AN;
use warnings;
use strict;

our @ISA=qw(class_A);

sub new { #_{

  my $class = shift;
  my $self  = {};
  bless $self, $class;

  return $self;

} #_}

1;
