#!/usr/bin/perl
use warnings;
use strict;


print "Zero-width negative look-ahead assertion\n\n";

quote_ampersands("foo bar & baz"); # Replace this one
quote_ampersands("10 &lt; 20"   ); # Don't replace this one
quote_ampersands("et&amp;"      ); # Don't replace this one
quote_ampersands("4 &gt; 2"     ); # Don't replace this one
quote_ampersands("abc&gtef"     ); # Replace this one

sub quote_ampersands {
  my $text = shift;

  printf "  %-20s", $text;

  $text =~ s/&(?!amp;|lt;|gt;)/&amp;/g;
  
  printf "%-20s\n", $text;
}
