package Base;
use warnings;
use strict;

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

sub static_ { #_{

#
# No need for a $self argument in
# static methods
#

  my $argument = shift;
  printf "Base::static_        argument=$argument\n";

} #_}

1;
