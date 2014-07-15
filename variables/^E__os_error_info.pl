#
#   TODO: Like $!, $^E is a dualvar, a scalar that contains two values. One's a string, and one's a number.
#        (http://stackoverflow.com/a/24757708/180275)
#
use warnings;
use strict;

my $file_name    = "an inexisting file!";
my $file_handle;

unless (open ($file_handle, "<", $file_name)) {

   print "\n";
   print "  could not open $file_name\n";
   print "  The operating system sasy: $^E\n";
   print "  Compare with \$!:           $!\n";
   print "\n";

}
