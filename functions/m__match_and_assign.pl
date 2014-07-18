use warnings;
use strict;

my $text = 'foo=40;bar=42;baz=44';

#                                                          prints
#                                                          --------+
my ($v1 ) = $text =~ /bar=(\d+);/;   print "v1: $v1\n";  # v1: 42  |    Note, $v1     within parantheses, g modifier NOT used
my  $v2   = $text =~ /bar=(\d+);/;   print "v2: $v2\n";  # v2: 1   |    Note, $v2 NOT within parantheses, g modifier NOT used
my ($v3 ) = $text =~ /bar=(\d+);/g;  print "v3: $v3\n";  # v3: 42  |    Note, $v3     within parantheses, g modifier     used
my  $v4   = $text =~ /bar=(\d+);/g;  print "v4: $v4\n";  # v4: 1   |    Note, $v4 NOT within parantheses, g modifier     used

print "----\n";

sub assign_if_matched_in_if_statement { # {{{

  my $string = shift;

  if (my ($matched) = $string =~ /^yes (.*)/) {
    print "String >$string< matched: $matched\n";
  }

} # }}}

assign_if_matched_in_if_statement('yes hello' );  #  prints «String >yes hello< matched: hello»
assign_if_matched_in_if_statement('no bye bye');  #  prints nothing

