# 
# /*
#  * *********** WARNING **************
#  * This file generated by ModPerl::WrapXS/0.01
#  * Any changes made here will be lost
#  * ***********************************
#  * 01: lib/ModPerl/Code.pm:716
#  * 02: lib/ModPerl/WrapXS.pm:635
#  * 03: lib/ModPerl/WrapXS.pm:1186
#  * 04: Makefile.PL:435
#  * 05: Makefile.PL:333
#  * 06: Makefile.PL:59
#  */
# 


package APR::Date;

use strict;
use warnings FATAL => 'all';


use APR ();
use APR::XSLoader ();
our $VERSION = '0.009000';
APR::XSLoader::load __PACKAGE__;



1;
__END__

=head1 NAME

APR::Date - Perl API for APR date manipulating functions




=head1 Synopsis

  use APR::Date ();
  
  # parse HTTP-complient date string
  $date_string = 'Sun, 06 Nov 1994 08:49:37 GMT';
  $date_parsed = APR::Date::parse_http($date_string);
  
  # parse RFC822-complient date string
  $date_string = 'Sun, 6 Nov 94 8:49:37 GMT';
  $date_parsed = APR::Date::parse_rfc($date_string);





=head1 Description

C<APR::Socket> provides the Perl interface to APR date manipulating
functions.




=head1 API

C<APR::Date> provides the following functions and/or methods:




=head2 C<parse_http>

Parse HTTP date strings

  $date_parsed = parse_http($date_string);

=over 4

=item arg1: C<$date_string> ( string )

The date string can be in one of the following formats:

  Sun, 06 Nov 1994 08:49:37 GMT  ; RFC 822, updated by RFC 1123
  Sunday, 06-Nov-94 08:49:37 GMT ; RFC 850, obsoleted by RFC 1036
  Sun Nov  6 08:49:37 1994       ; ANSI C's asctime() format

refer to RFC2616 for the details (GMT is assumed, regardless of the
used timezone).

=item ret: C<$date_parsed> ( number )

the number of microseconds since 1 Jan 1970 GMT, or 0 if out of range
or if the date is invalid.

=item since: 2.0.00

=back

Remember to divide the return value by 1_000_000 if you need it in
seconds.






=head2 C<parse_rfc>

Parse a string resembling an RFC 822 date.  It's meant to be lenient
in its parsing of dates.  Hence, this will parse a wider range of
dates than C<L<parse_http()|/C_parse_http_>>.

  $date_parsed = parse_rfc($date_string);

=over 4

=item arg1: C<$date_string> ( string )

The date string can be in one of the following formats:

  Sun, 06 Nov 1994 08:49:37 GMT  ; RFC 822, updated by RFC 1123
  Sunday, 06-Nov-94 08:49:37 GMT ; RFC 850, obsoleted by RFC 1036
  Sun Nov  6 08:49:37 1994       ; ANSI C's asctime() format
  Sun, 6 Nov 1994 08:49:37 GMT   ; RFC 822, updated by RFC 1123
  Sun, 06 Nov 94 08:49:37 GMT    ; RFC 822
  Sun, 6 Nov 94 08:49:37 GMT     ; RFC 822
  Sun, 06 Nov 94 08:49 GMT       ; Unknown [drtr\@ast.cam.ac.uk]
  Sun, 6 Nov 94 08:49 GMT        ; Unknown [drtr\@ast.cam.ac.uk]
  Sun, 06 Nov 94 8:49:37 GMT     ; Unknown [Elm 70.85]
  Sun, 6 Nov 94 8:49:37 GMT      ; Unknown [Elm 70.85]

=item ret: C<$date_parsed> ( number )

the number of microseconds since 1 Jan 1970 GMT, or 0 if out of range
or if the date is invalid.

=item since: 2.0.00

=back

Remember to divide the return value by 1_000_000 if you need it in
seconds.






=head1 See Also

L<mod_perl 2.0 documentation|docs::2.0::index>.




=head1 Copyright

mod_perl 2.0 and its core modules are copyrighted under
The Apache Software License, Version 2.0.




=head1 Authors

L<The mod_perl development team and numerous
contributors|about::contributors::people>.

=cut

