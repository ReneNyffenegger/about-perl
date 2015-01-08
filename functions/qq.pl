use warnings;
use strict;

my $text = 'baz';

print qq{

  foo  bar $text

  '$text' "$text"

};

print "-------------\n";

print qq !

   \$text = $text

!;
