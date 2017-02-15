#!/usr/bin/perl
use warnings;
use strict;

my $text = 'ab cde #fg hi jkl# mn op qrs #tuv wxy# z';

$text =~ s/#(.*?)#/'#' . uc($1) . '#'/ge;

print $text;
#
# ab cde #FG HI JKL# mn op qrs #TUV WXY# z
