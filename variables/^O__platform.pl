#
#   See also Sys::Info::OS 
#
use warnings;
use strict;

use Config;  # https://github.com/ReneNyffenegger/PerlModules/tree/master/Config


print "\n";
print "  The script is running on $^O\n"                        ; # For example 'MSWin32'
print "  Compare with \$Config{osname} (= $Config{osname})\n";
print "\n";
