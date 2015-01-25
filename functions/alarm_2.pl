#
# http://stackoverflow.com/a/28104243/180275
#
#   Compare with alarm.pl
#
use warnings;
use strict;
use Time::HiRes 'time';

$|=1;

for my $i (1 .. 10) {

  local $SIG{ALRM} = sub {
    die;
  };

  eval {
    alarm 5;
    sub_info($i);
  };

  if ($@) {
    print "aborted\n";
  }
  alarm 0;
}

sub sub_info {
  my $i = shift;
  my $r = int(10*rand);

  printf "Trying %2d for %2d seconds: ", $i, $r;

# Alternatively: "sleep $r" instead of the
# two following lines
  my $start_time = time;
  1 while time - $start_time < $r;

  print "finished\n";
}
