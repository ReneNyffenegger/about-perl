package Base;

sub new { #_{

  my $package = shift;
  my $data    = shift;

  print "Base::new:    package=$package, data=$data\n";

  my $self = {};
  $self->{data} = $data;

  bless $self, $package;

} #_}

sub method { #_{

  my $self = shift;

  printf "Base::method, ref(\$self)=%s, data=%s\n", ref($self), $self->{data} ;

} #_}

sub overridden { #_{

  my $self     = shift;
  my $argument = shift;

  printf "Base::overridden,    ref(\$self)=%s, argument=%s\n", ref($self), $argument;

} #_}

1;
