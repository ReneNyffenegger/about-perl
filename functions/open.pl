use warnings;
use strict;



ReadAFile($0);
print "--------------------------\n";
ReadAFile("inexisting file");


sub ReadAFile { # {{{

    my $filename = shift;
    my $filehandle;
    
    unless (open ($filehandle, "<", $filename)) {

       if ($^E == 0x20) {

        # http://stackoverflow.com/a/3220688/180275
          print "Could not open $filename because it is used by another process\n";
          return;

       }

       print "could not open $filename ($! $^E)\n";
       return;

    }

    while (my $line = <$filehandle>) {

      print $line;

    }

    close $filehandle;
    
} # }}}
