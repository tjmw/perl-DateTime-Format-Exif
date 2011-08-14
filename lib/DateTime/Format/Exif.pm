package DateTime::Format::Exif;

use 5.006;
use strict;
use warnings;

use DateTime::Format::Builder
(
    parsers => {
        parse_datetime => {
            regex  => qr/^(\d{4}):(\d\d):(\d\d) (\d\d):(\d\d):(\d\d)$/,
            params => [qw( year month day hour minute second )],
        },
        parse_date => {
            regex  => qr/^(\d{4}):(\d\d):(\d\d)$/,
            params => [qw( year month day )],
        },
    }
);


=head1 NAME

DateTime::Format::Exif

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

sub format_date {
    my ($self, $dt) = @_;

    return $dt->ymd(':');
}

sub format_time {
    my ($self, $dt) = @_;

    return $dt->hms(':');
}

sub format_datetime {
    my ($self, $dt) = @_;

    return $self->format_date($dt) . ' ' . $self->format_time($dt);
}

=head1 SYNOPSIS

    use DateTime::Format::Exif;

    my $dt = DateTime::Format::Exif->parse_datetime( '2011:08:12 11:31:25' );

    # 2011:08:12 11:31:25
    DateTime::Format::Exif->format_datetime($dt);

    ...

=head1 AUTHOR

Tom Wey, C<< <tjmwey at gmail.com> >>

=head1 BUGS

Please email me.

=head1 ACKNOWLEDGEMENTS

All the heavy lifting is done by Dave Rolsky's excellent
DateTime::Format::Builder.

All I had to do was write a couple of very simple regular expressions!

=head1 SEE ALSO

L<DateTime>

L<DateTime::Format::Builder>

=head1 LICENSE AND COPYRIGHT

Copyright 2011 Tom Wey.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

1; # End of DateTime::Format::Exif
