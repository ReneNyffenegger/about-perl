use warnings;
use strict;

use utf8;

# my $a  = 'a';
  my $ä  = 'ä';
  my $b  = 'b';


if ($ä lt $b) {
   print "$ä lt $b\n";
}
else  {
   print "$ä ge $b\n";
}

use locale;

if ($ä lt $b) {
   print "$ä lt $b\n";
}
else  {
   print "$ä ge $b\n";
}
