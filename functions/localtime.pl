use warnings;
use strict;

my ($second, $minute, $hour, $day_of_month, $month, $year, $day_of_week, $day_of_year, $daylight_saving_time) = localtime(time);

$month ++;      # localtime returns 0 for January, 1 for February etc
$year  += 1900; # year is 1900 years to early

printf("%4d-%02d-%02d %02d:%02d:%02d", $year, $month, $day_of_month, $hour, $minute, $second);
