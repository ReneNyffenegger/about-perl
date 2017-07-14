#!/usr/bin/perl
use warnings;
use strict;


TQ84::Func('one', 2, 'III');

TQ84->Func('bar', 'baz');

my $package = 'TQ84';
$package->Func('hello','world');

my $blessed = bless {}, 'TQ84';
print "blessed = $blessed\n";
$blessed->Func('blessed', '...');

Func TQ84('xyz', 'abc');

package TQ84;

sub Func {
  my $arg_1 = shift;
  my $arg_2 = shift;
  my $arg_3 = shift;

  print "Func
  arg_1: $arg_1
  arg_2: $arg_2
  arg_3: $arg_3

";

}

1;
