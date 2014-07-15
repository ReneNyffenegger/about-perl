use warnings;
use strict;

use Config;


print "\n";
print "  The script is running on $^O\n"                        ; # For example 'MSWin32'
print "  Compare with \$Config{osname} (= $Config{osname})\n";
print "\n";
