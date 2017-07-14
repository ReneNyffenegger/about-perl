package Derived_1;
use warnings;
use strict;

use Base;

our @ISA = qw(Base);

sub new { #_{
  my $class = shift;
  my $self  = $class->SUPER::new();
  $self->p("Derived_1::new");
  return $self;
} #_}

sub m_d1 { #_{
  my $self = shift;
  $self->p("Derived_1::m_d1");
} #_}

1;
