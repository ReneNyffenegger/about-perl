package Base;
use warnings;
use strict;

sub new { #_{
  my $class = shift;
  my $self  = {};
  bless $self, $class;

  $self->p("Base::new");
  return $self;
} #_}

sub p { #_{

  my $self = shift;
  my $text = shift;
  printf("%-30s: [ref(\$self)=%s]\n", $text, ref $self);

} #_}

1;
