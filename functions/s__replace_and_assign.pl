use warnings;
use strict;

my $original  = "ADC DEDGH IDD DLMN OD";
#
#  The following changes $original and
#  assignes the number of changes
#  to $changed.
#
my $changed   = $original =~ s/D/*/g;

print "original: $original\n";
print "changed:  $changed\n";

print "-------------------------------\n";


 my $original_  = "ADC DEDGH IDD DLMN OD";
#
#  The following first assigns $original_
#  to $changed_ (Note the paranthesis),
#  THEN changes the substituon on $changed_,
#  thus preserving $original_.
#
(my $changed_   = $original_) =~ s/D/*/g;

print "original_: $original_\n";
print "changed_:  $changed_\n";
