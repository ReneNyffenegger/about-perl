use warnings;
use strict;

my $text = 'Foo-bar baz';

# It's possible to use \w in «character ranges»:
$text =~ /([\w-]+)/;
print "$1\n";        # Foo-bar
