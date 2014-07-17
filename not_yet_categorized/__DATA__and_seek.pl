use warnings;
use strict;

#
#    Print the entire source File.
#
seek DATA, 0, 0;

while (my $dat = <DATA>) {
  print $dat;
}

close (DATA);

__DATA__
foo bar baz
one two three
111 222 333
