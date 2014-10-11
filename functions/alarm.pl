use warnings;
use strict;

use Time::HiRes 'time';

my $run = 1;

$SIG{ALRM} = sub {

   $run = 0;
   print "Timeout reached\n";

};

alarm 3;

my $start_time = time;

while ($run) {
  print time - $start_time, "\n";
}
