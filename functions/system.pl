use warnings;
use strict;

my $arg = $ARGV[0];

if (defined $arg and $arg eq 'exit_with_value') {
  exit 42;
}

my $exit_value = system('system.pl exit_with_value');
# The exit value is a 16 bit value:
#   the low 7 bits are the signal the process died from
#     (if any) and
#   the high 8 bits are the actuel exit value
#
# In order to get the output of a command, use backticks ``
#
# See also IPC::Run

printf "exit value: %d\n", $exit_value >> 8;
