use warnings;
use strict;

while (my $dat = <DATA>) {
  print $dat;
}

close (DATA);


__DATA__
some data
after the __DATA__ token.
This data can be read
as shown in the code
above.
