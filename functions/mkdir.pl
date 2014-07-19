#
#   mkdir FILENAME, MASK
#   mkdir FILENAME
#   mkdir
#
use warnings;
use strict;

use File::Path qw(rmtree make_path);


rmtree     'new-directory' if -d 'new-directory';
mkdir      'new-directory' or die "could not create new-directory";

mkdir      'another-directory/sub-directory' or print "mkdir cannot recursively create directories, use File::Path->make_path instead\n";
make_path  'another-directory/sub-directory' or die;
