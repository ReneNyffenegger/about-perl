#!/usr/bin/perl
use warnings;
use strict;

use Base;
use Derived_1;
use Derived_2;
use TwoParents;

print "----- Base\n";
my $base = Base->new;

print "----- Derived_1\n";
my $der1 = Derived_1->new;
$der1->m_d1();

print "----- Derived_2\n";
my $der2 = Derived_2->new;
$der2->m_d2();

print "----- TwoParents->new\n";
my $twop = TwoParents->new;
$twop->m_d1();
$twop->m_d2();
