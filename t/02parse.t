use strict;

use Test::More tests => 9;

use DateTime::Format::Exif;

my $class = 'DateTime::Format::Exif';

{
    my $dt = $class->parse_date( '2011:08:12' );
    is $dt->year, 2011;
    is $dt->month, 8;
    is $dt->day, 12;
}

{
    my $dt = $class->parse_datetime( '2011:08:12 11:31:05' );
    is $dt->year, 2011;
    is $dt->month, 8;
    is $dt->day, 12;
    is $dt->hour, 11;
    is $dt->minute, 31;
    is $dt->second, 5;
}
