use warnings;
use strict;
use feature 'say';

my $p;
my $q  = "foo";
my $r  = "";
my $t  = "0";


say $p || "bar"; # bar
say $q || "bar"; # foo
say $r || "bar"; # bar
say $t || "bar"; # bar
