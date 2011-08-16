use strict;

use Test::More tests => 2;

use DateTime::Format::Exif;

my $class = 'DateTime::Format::Exif';

my $dt = DateTime->new(
    year      => 2011,
    month     => 8,
    day       => 12,
    hour      => 11,
    minute    => 31,
    second    => 00,
    time_zone => 'UTC',
);

{
    is $class->format_date($dt),     '2011:08:12',          'format_date';
    is $class->format_datetime($dt), '2011:08:12 11:31:00', 'format_datetime';
}
