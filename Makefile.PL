use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'DateTime::Format::Exif',
    AUTHOR              => q{Tom Wey <tjmwey at gmail.com>},
    VERSION_FROM        => 'lib/DateTime/Format/Exif.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'DateTime'                  => 0,
        'DateTime::Format::Builder' => '0.80',
        'Test::More'                => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'DateTime-Format-Exif-*' },
);
