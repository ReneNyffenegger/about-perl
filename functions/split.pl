use warnings;
use strict;

print "\n-----------------------\n";

# Special case; split emulates the default behavior of the command line 
# tool awk when the PATTERN is either omitted or a literal string 
# composed of a single space character (such as ' ' or "\x20" , 
# but not e.g. / / 
my @array  = split ' ', "foo    bar baz\tone  two\n\nthree";
print "' ': ";
print join "\n' ': ", @array;
#
# ' ': foo
# ' ': bar
# ' ': baz
# ' ': one
# ' ': two
# ' ': three

print "\n-----------------------\n";

# In contrast, using / / splits exactly on a space (not
# a tab, not a new line:
@array  = split / /, "foo    bar baz\tone  two\n\nthree";
print "/ /: ";
print join "\n/ /: ", @array;
# 
# / /: foo
# / /:
# / /:
# / /:
# / /: bar
# / /: baz        one
# / /:
# / /: two
#
# three

print "\n-----------------------\n";

#  split // 
#    splits the string into its characters:

@array = split //, "split into characters";

print join " - ", @array;
print "\n";

# prints:
#  s - p - l - i - t -   - i - n - t - o -   - c - h - a - r - a - c - t - e - r - s 

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


print "\n-----------------------\n";

#  Split only into two parts, using 3rd parameter:
my $text = "foo-bar-baz-qux-quux";

my ($text_1, $text_2) = split '-', $text, 2;

print "text_1: $text_1\ntext_2: $text_2\n";

# prints
# --
# text_1: foo
# text_2: bar-baz-qux-quux

print "\n-----------------------\n";

#  capturing groups (paranthesis)
#  http://stackoverflow.com/a/27798422/180275
my $abc = 'aa132bc4253defg18';
my @xyz = split /(\d+)/, $abc;
print join ",", @xyz;
# prints
# --
# aa,132,bc,4253,defg,18
