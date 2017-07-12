package Derived;

our @ISA = qw(Base);

sub new { #_{

  my $package = shift;
  my $data    = shift;
  print "Derived::new: package=$package, text=$data\n";

  return $package->SUPER::new($data);

} #_}

sub overridden { #_{

  my $self     = shift;
  my $argument = shift;

  printf "Derived::overridden, ref(\$self)=%s, argument=%s\n", ref($self), $argument;

  $self->SUPER::overridden($argument);

} #_}

1;
