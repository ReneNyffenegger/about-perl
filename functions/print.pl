use warnings;
use strict;

# c:\foo\bar\about\perl\functions>perl print.pl 1> print.STDOUT 2> print.STDERR

open (my $fileh, '>print.2.filehandle') or die;

print        "foobar\n";
print STDOUT "STDOUT\n";
print STDERR "STDERR\n";
print $fileh "fileh \n";

my @list = qw(foo bar baz);
print @list;
# foobarbaz
