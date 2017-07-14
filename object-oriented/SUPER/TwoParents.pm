package TwoParents;
use warnings;
use strict;

our @ISA = qw(Derived_1 Derived_2);

sub new { #_{
  my $class = shift;

# TwoParents has to classes it derives from: Derived_1
# and Derived_2.
# SUPER will only call Derived_1:
  my $self=$class->SUPER::new();
  return $self;
} #_}

1;
