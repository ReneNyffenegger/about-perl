#!/usr/bin/perl
use warnings;
use strict;

my  $var          = A(); print "var = $var\n"          ; # var = BAZ
my ($par)         = A(); print "par = $par\n"          ; # par = FOO
my ($foo, $bar)   = A(); print "foo = $foo, bar=$bar\n"; # foo = FOO, bar = BAR
my  $fo_, my $ba_ = A(); print "fo_ = $fo_, ba_=$ba_\n"; # fo_ = , ba_ = BAZ


sub A {

  my $foo = 'FOO';
  my $bar = 'BAR';
  my $baz = 'BAZ';

  return $foo, $bar, $baz;

}
