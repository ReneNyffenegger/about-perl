#!/usr/bin/perl
use warnings;
use strict;

use A ;
use B ;
use C ;
#use R ;
use AB;
use AN;

sub isa_ {
  my $obj = shift;
  my $nam = shift;

# $nam = "class_$nam";

  if ($obj->isa($nam)) {
    printf("%-2s is a    $nam\n", ref $obj);
  }
  else {
    printf("%-2s isn't a $nam\n", ref $obj);
  }

}

my $A  = A  -> new;
my $B  = B  -> new;
my $AB = AB -> new;
my $AN = AN -> new;

isa_($A    , 'UNIVERSAL' );    # A  is a    UNIVERSAL
isa_($A    , 'A'         );    # A  is a    A
isa_($A    , 'B'         );    # A  isn't a B
isa_($A    , 'AN'        );    # A  isn't a AN

print "-------------------------\n";

isa_($B    , 'UNIVERSAL' );    # B  is a    UNIVERSAL
isa_($B    , 'A'         );    # B  isn't a A
isa_($B    , 'B'         );    # B  is a    B

print "-------------------------\n";

isa_($AN   , 'UNIVERSAL' );    # AN is a    UNIVERSAL
isa_($AN   , 'A'         );    # AN is a    A
isa_($AN   , 'AN'        );    # AN is a    AN
isa_($AN   , 'B'         );    # AN isn't a B

print "-------------------------\n";

isa_($AB   , 'UNIVERSAL' );    # AB is a    UNIVERSAL
isa_($AB   , 'A'         );    # AB is a    A
isa_($AB   , 'B'         );    # AB is a    B
isa_($AB   , 'C'         );    # AB isn't a C
isa_($AB   , 'AB'        );    # AB is a    AB
