use warnings;
use strict;

my $string = "foo*(bar)[baz]! 42 #\n.";

print quotemeta($string), "\n";
# foo\*\(bar\)\[baz\]\!\ 42\ \#\
# \.
