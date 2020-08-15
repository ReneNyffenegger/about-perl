#!/usr/bin/perl
use warnings;
use strict;

$SIG{__DIE__} = sub {
   print("The programm died: @_");
   exit(-1);
};


for my $word ( qw( foo bar bla baz ) ) {

   unless ($word eq 'foo' or $word eq 'bar' or $word eq 'baz') {
     die "word $word was found";
   }
   print "word is $word\n";

}
