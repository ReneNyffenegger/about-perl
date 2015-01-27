use warnings;
use strict;
use feature 'say';

my $abc = "abc 123 cde";

                    say $abc; # abc 123 cde
$abc =~ y/\d/Q/   ; say $abc; # abc 123 cQe
$abc =~ y/ab/X/   ; say $abc; # XXc 123 cQe
$abc =~ y/ce/CE/  ; say $abc; # XXC 123 CQE
$abc =~ y/[0-9]/#/; say $abc; # XXC ### CQE
