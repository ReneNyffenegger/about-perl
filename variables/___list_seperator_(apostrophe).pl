#
#   Windows doesn't allow the characters / \ : * ? " < > | in a file name, hence the apostrophe does not appear in the filename.
#
use warnings;
use strict;

use feature qw (state say);

my @list = qw(one two three for);

test_name ('print @list;');
            print @list;

test_name ('print "@list";');
            print "@list";

$" = " - ";

test_name ('print @list; [ $" = " - " ]');
            print @list;

test_name ('print "@list"; [ $" = " - " ]');
            print "@list";

print "\n";


sub test_name { # {{{

    print "\n";
   
    state $first = 1;
   
    print "\n" x 2 unless $first;
    $first = 0;
    
    my $text = shift;
    say $text;
    say '-' x length($text);
    
} # }}}

__END__

print @list;
------------
onetwothreefor


print "@list";
--------------
one two three for


print @list; [ $" = " - " ]
---------------------------
onetwothreefor


print "@list"; [ $" = " - " ]
-----------------------------
one - two - three - for

