#!/usr/bin/perl
use warnings;
use strict;

print "Status: 200 OK\r\n";
print "Content-type: text/plain\r\n\r\n";
print "\r\n";

print join "\n", @INC;
#
# /usr/local/lib64/perl5
# /usr/local/share/perl5
# /usr/lib64/perl5/vendor_perl
# /usr/share/perl5/vendor_perl
# /usr/lib64/perl5
# /usr/share/perl5
# .
