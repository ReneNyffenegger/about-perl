use warnings;
use strict;
use feature 'say';

use Cwd 'cwd';

say "I am in " . cwd();

chdir('..');
say "I am in " . cwd();

if (chdir) {
  say "I am in " . cwd();
}
else {
  say "I could not chdir";
}


