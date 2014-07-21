use warnings;
use strict;

use feature 'say';


# Incrementing undefined

my      $undefined        ;
        $undefined ++     ;
say     $undefined        ;  #  1

my      $another_undefined;
     ++ $another_undefined;
say     $another_undefined;  #  1


# Incrementing strings

my      $string = 'y'     ;
say     $string++         ;  #  y
say     $string++         ;  #  z
say     $string++         ;  #  aa

my      $string_2 = 'zZz' ;
        $string_2 ++      ;
say     $string_2         ;  #  aaAa       (Note upper and lower case)
