use warnings;
use strict;
use feature 'say';

my $pattern_contains_a_2_digit_number = qr/\b\d{2}\b/;


does_it_match("foo 4   bar"); # foo 4   bar does not match
does_it_match("foo 42  bar"); # foo 42  bar matches
does_it_match("foo 421 bar"); # foo 421 bar does not match


sub does_it_match { # {{{

    my $text = shift;

    if ($text =~ $pattern_contains_a_2_digit_number) {
      say "$text matches";
    }
    else {
      say "$text does not match";
    }
    
} # }}}
