use warnings;
use strict;



print "\n-----------------------\n";



# Special case; split emulates the default behavior of the command line 
# tool awk when the PATTERN is either omitted or a literal string 
# composed of a single space character (such as ' ' or "\x20" , 
# but not e.g. / / 
my @array  = split ' ', "foo    bar baz\tone  two\n\nthree";
print join "\n", @array;

# prints (same as above)
# --
# foo
# bar
# baz
# one
# two
# three

print "\n-----------------------\n";

@array  = split 'foo', "foobarfoobazfooonefootwo";
print join "\n", @array;

# prints (note the first empty line)
# --
#
# bar
# baz
# one
# two

print "\n-----------------------\n";

@array  = split /\d/, "foo1bar2baz99one1two2three";
print join "\n", @array;

# prints
# --
# foo
# bar
# baz
# 
# one
# two
# three
