#!/usr/bin/perl

use warnings;
use strict;

my @items = qw(foo bar baz);

is_in_items('bar');
is_in_items('strawberry');

sub is_in_items {
  my $item = shift;

  if ($item ~~ @items) {
    print "$item is in \@items\n";
  }
  else {
    print "$item is in not \@items\n";
  }
}
# 
# Smartmatch is experimental at ./~~.pl line 14.
# bar is in @items
# strawberry is in not @items
