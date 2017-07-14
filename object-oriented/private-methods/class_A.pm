package class_A;

my $private_method = sub { #_{

#
# Declaring a private method. The method apparantly can not be called
# from outside this package.
#

  my $self = shift;
  $self->echo("private_method was called");

}; #_}

sub new { #_{

  my $class = shift;
  my $self  = {};
  bless $self, $class;
  return $self;

} #_}

sub public_method {
  my $self = shift;

  $self->echo("public_method was called, going to call private method");

  # Call private method.
  $self->$private_method();
}

sub echo { #_{
  my $self = shift;
  my $text = shift;

  print "$text\n";

} #_}


1;
