use warnings;
use strict;

foreach my $var (sort keys %ENV) {
  printf "%-30s %s\n", $var, $ENV{$var};
}

die if exists $ENV{'TQ84_ENV_VAR'};

$ENV{'TQ84_ENV_VAR'} = 'Some value';


my @read = readpipe('echo %TQ84_ENV_VAR%');

print "\n", @read, "\n";
