package String::UTF8::MD5;

use 5.006;
use strict;
use warnings FATAL => 'all';

use base qw(Exporter);

our $EXPORT_OK = qw(md5);

=head1 NAME

String::UTF8::MD5 - UTF-8-safe md5sums of strings

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';


=head1 SYNOPSIS

This is a simple UTF8-safe wrapper around Crypt::MD5, for use with utf-8 strings.

use String::

=head1 EXPORT

=head2 md5 may be exported if requested

=head1 SUBROUTINES/METHODS

=head2 md5

=cut

sub md5 {
    my ($string) = @_;

    # remove utf-8 encoding
    if (Encode::is_utf8($string)) {
            $string = Encode::encode_utf8($string);
    }

    return Digest::MD5::md5_hex($string);
}

=head1 AUTHOR

Binary.com, C<< <cpan at binary.com> >>

=head1 TODO

Only hex notation is currently supported.  In the future we need to add additional
formatting options.

=head1 BUGS

Please report any bugs or feature requests to C<bug-string-utf8-md5 at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=String-UTF8-MD5>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc String::UTF8::MD5


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=String-UTF8-MD5>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/String-UTF8-MD5>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/String-UTF8-MD5>

=item * Search CPAN

L<http://search.cpan.org/dist/String-UTF8-MD5/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2015 Binary.com.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


=cut

1; # End of String::UTF8::MD5
