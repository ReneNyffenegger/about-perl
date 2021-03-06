#
#  Compare with 
#    https://github.com/ReneNyffenegger/PerlModules/tree/master/File/stat
#
use warnings;
use strict;

use POSIX 'strftime';

my (
  $device_number_of_file_system,            #  0
  $inode_number,                            #  1
  $file_mode_and_permission,                #  2
  $number_of_hardlinks_to_file,             #  3
  $user_id_owner,                           #  4
  $group_id_owner,                          #  5
  $device_id,                               #  6
  $size_bytes,                              #  7
  $last_access_time_secs_since_epoch,       #  8
  $last_modify_time_secs_since_epoch,       #  9
  $inode_change_time_secs_since_epoch,      # 10
  $block_size_bytes,                        # 11
  $number_of_blocks                         # 12
) 
# ---------------------------------
  = stat($0);


print "\n";
printf("Device number of file system  %d\n" , $device_number_of_file_system       );
printf("Inode  number                 %d\n" , $inode_number                       );
printf("File mode / permission        %3o\n", $file_mode_and_permission           ); # TODO: How does that look on unix
printf("Number of hardlinks to file   %d\n" , $number_of_hardlinks_to_file        );
printf("Owner's user id               %d\n" , $user_id_owner                      );
printf("Owner's group id              %d\n" , $group_id_owner                     );
printf("Device id                     %d\n" , $device_id                          );
printf("Size in bytes                 %d\n" , $size_bytes                         );
printf("Last access time              %d\n" , $last_access_time_secs_since_epoch  );
printf("Last modify time              %d\n" , $last_modify_time_secs_since_epoch  );
printf("Last change time inode        %d\n" , $inode_change_time_secs_since_epoch );
printf("Block size                    %d\n" , $block_size_bytes                   )  if $block_size_bytes;
printf("Size in blocks                %d\n" , $number_of_blocks                   )  if $number_of_blocks;

# ----------------------------------

print "\nLast modification, human readable: ", 
         strftime('%H:%M:%S %d.%m.%Y', 
                  localtime( (stat($0))[9]) ),
       "\n";
