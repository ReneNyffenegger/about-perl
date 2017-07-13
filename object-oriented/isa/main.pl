#!/usr/bin/perl
use warnings;
use strict;

use class_A ;
use class_B ;
use class_C ;
#use class_R ;
use class_AB;
use class_AN;

sub isa_ {
  my $obj = shift;
  my $nam = shift;

  $nam = "class_$nam";

  if ($obj->isa($nam)) {
    printf("%-9s is a    $nam\n", ref $obj);
  }
  else {
    printf("%-9s isn't a $nam\n", ref $obj);
  }

}

my $A  = class_A  -> new;
my $B  = class_B  -> new;
my $AB = class_AB -> new;
my $AN = class_AN -> new;

isa_($A    , 'A' );
isa_($A    , 'B' );
isa_($A    , 'AN');

print "--------------------------\n";

isa_($B    , 'A' );
isa_($B    , 'B' );

print "--------------------------\n";

isa_($AN   , 'A' );
isa_($AN   , 'AN');
isa_($AN   , 'B' );

print "--------------------------\n";

isa_($AB   , 'A' );
isa_($AB   , 'B' );
isa_($AB   , 'C' );
isa_($AB   , 'AB');
