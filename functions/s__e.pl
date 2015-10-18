use warnings;
use strict;

my $string;

$string = "20 22";
$string =~ s/(\d+) (\d+)/$1 + $2/e;
print "$string\n";
# 42

$string = "hello world";
$string =~ s/(\w+) (\w+)/$1 . '-' . $2/e;
print "$string\n";
# hello-world

$string = "'hello' . ' ' . 'world'";
$string =~s/(.*)/$1/e;
print "$string\n";
# 'hello' . ' ' . 'world'

$string = "'hello' . ' ' . 'world'";
$string =~ s/(.*)/eval($1)/e;
print "$string\n";
# hello world

$string = "'hello' . ' ' . 'world'";
$string =~ s/(.*)/$1/ee;
print "$string\n";
# hello world
