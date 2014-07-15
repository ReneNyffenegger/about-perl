use warnings;
use strict;



ReadAFile($0);
print "--------------------------\n";
ReadAFile("inexisting file");


sub ReadAFile { # {{{

    my $filename = shift;
    my $filehandle;
    
    unless (open ($filehandle, "<", $filename)) {

       print "could not open $filename ($! $^E)\n";
       return;

    }

    while (my $line = <$filehandle>) {

      print $line;

    }

    close $filehandle;
    
} # }}}
