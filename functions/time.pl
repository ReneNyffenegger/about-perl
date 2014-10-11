#
#   Compare with time from module Time::HiRes
#
use warnings;
use strict;

my $t0 = time;

print "t0: $t0\n";

sleep 5;

my $t5 = time;
print "t5 - t0: ", $t5 - $t0, "\n";
