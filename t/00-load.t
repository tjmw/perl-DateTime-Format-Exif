#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'DateTime::Format::Exif' ) || print "Bail out!\n";
}

diag( "Testing DateTime::Format::Exif $DateTime::Format::Exif::VERSION, Perl $], $^X" );
