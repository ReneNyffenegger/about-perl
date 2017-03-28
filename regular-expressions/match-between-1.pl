#!/usr/bin/perl
use warnings;
use strict;

my $text = 'abc <ITEMS>de fghi</ITEMS> j kl mno <ITEMS>pq r stu vw</ITEMS> xyz';

my @items = $text =~ m,<ITEMS>((?:(?!<ITEMS>).)*?)</ITEMS>,g;

print join "\n", @items;
