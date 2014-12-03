use warnings;
use strict;
use feature 'say';


my $file_or_dir = shift;
$file_or_dir = __FILE__ unless $file_or_dir;


#    -r File is readable by effective uid/gid.
#    -w File is writable by effective uid/gid.
#    -x File is executable by effective uid/gid.
#    -o File is owned by effective uid.
#    -R File is readable by real uid/gid.
#    -W File is writable by real uid/gid.
#    -X File is executable by real uid/gid.
#    -O File is owned by real uid.
#    -e File exists.
#    -z File has zero size (is empty).
#    -s File has nonzero size (returns size in bytes).
#    -f File is a plain file.
#    -d File is a directory.
#    -l File is a symbolic link.
#    -p File is a named pipe (FIFO), or Filehandle is a pipe.
#    -S File is a socket.
#    -b File is a block special file.
#    -c File is a character special file.
#    -t Filehandle is opened to a tty.
#    -u File has setuid bit set.
#    -g File has setgid bit set.
#    -k File has sticky bit set.
#    -T File is an ASCII text file (heuristic guess).
#    -B File is a "binary" file (opposite of -T).
#    -M Script start time minus file modification time, in days.
#    -A Same for access time.
#    -C Same for inode change time (Unix, may differ for other
#    platforms)


if (-e $file_or_dir) {

  if (-f $file_or_dir) {
    say "$file_or_dir is a file, its size in bytes is: " . -s $file_or_dir;
  }
  elsif (-d $file_or_dir) {
    say "$file_or_dir is a diractory";
  }
  else {
    say "Neither a file nor a directory???";
  }

}
else {
  say "$file_or_dir does not exist";
}
