use warnings;
use strict;


sub signal_handler {
    my $signal_name = shift;

    if ($signal_name eq 'INT') {

      print "Ctrl-C pressed, exiting\n";
      exit 0;

    }
}


$SIG {INT} = \&signal_handler;


my $i=0;

while (1) {
   print $i++, "\n";
}
