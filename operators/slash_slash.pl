use warnings;
use strict;
use feature 'say';

my $p;
my $q  = "foo";
my $r  = "";
my $t  = "0";


say $p // "bar"; # bar
say $q // "bar"; # foo
say $r // "bar"; #
say $t // "bar"; # 0

say "----------";

$p //= "V";
$q //= "V";
$r //= "V";
$t //= "V";

say $p; # v
say $q; # foo
say $r; #
say $t; # 0
