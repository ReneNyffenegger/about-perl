#
#   The pack function converts values to a byte sequence containing
#   representations according to a given specification.
#
use warnings; use strict;


my $hex    = '01' . '05' . '42' . 'f3';
my $string = pack('H*', $hex);
dump_string($string);


$string = "\x01\x05\x42\xf3";
dump_string($string);


my @shorts = (0, 1, 255, 256, 257, 258);
$string = pack('s6', @shorts);
dump_string($string);




sub dump_string {

  my $string = shift;

# sort of emulate:
# print unpack('H*', $string); print "\n";

  for my $byte (split //, $string) {
    printf "%.2x ", ord($byte);
  }

  print "\n";


}
