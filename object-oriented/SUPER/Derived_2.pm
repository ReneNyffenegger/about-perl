package Derived_2;
use warnings;
use strict;

our @ISA = qw(Base);

sub new { #_{
  my $class = shift;
  my $self = $class->SUPER::new();
  $self->p("Derived_2::p");
  return $self;
} #_}

sub m_d2 { #_{
  my $self = shift;
  $self->p("Derived_2::m_d2");
} #_}

1;
