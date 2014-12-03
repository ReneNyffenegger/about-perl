use warnings;
use strict;

our $r_foo;

require "required.pl";
#
#  it seems that alternatively it can be written
#     require required
#  but that then the required file needs the name
#     required.pm
#

printf "%s  %d\n", $r_foo, sum (38, 4);
