#
#   Compare ref with Scalar::Util->reftype ( https://github.com/ReneNyffenegger/PerlModules/blob/master/Scalar/Util/reftype.pl )
#
use warnings;
use strict;
use feature 'say';

my %H = (1 => 'one', 2 => 'two', 3 => 'three');
my @A = qw(foo bar baz);
my $S = 'A scalar';


# ref returns a non empty string if the argument is a reference. In the
# following three calls, the argument is not a reference, hence, say says nothing:

say ref(%H);
# 

say ref(@A);
#

say ref($S);
#

# In the following three calls, the argument is indeed a reference, hence
# something is said:

say ref(\%H);
# HASH

say ref(\@A);
# ARRAY

say ref(\$S);
# SCALAR

open (my $G, '<', $0);
say ref($G);
# GLOB

# ----------

my $CodeRef = \&F;
say ref($CodeRef);
# CODE

my $RegExp = qr/.*/;
say ref($RegExp);
# Regexp


sub F {

}
