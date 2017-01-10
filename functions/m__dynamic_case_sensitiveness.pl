#!/usr/bin/perl
use warnings;
use strict;

match_txt('foo-bar', '');
match_txt('foo-BAR', '');
match_txt('foo-bar', 'i');

sub match_txt {
  my $txt            = shift;
  my $case_sensitive = shift;

  if ($txt =~ m!(?$case_sensitive:foo-BAR)!) {
    print "$txt matches       | case_sensitive = $case_sensitive\n";
  }
  else {
    print "$txt doesn't match | case_sensitive = $case_sensitive\n";
  }
}

# foo-bar doesn't match | case_sensitive = 
# foo-BAR matches       | case_sensitive = 
# foo-bar matches       | case_sensitive = i
