use v6;

#
# Copyright © 2020-2022 Joelle Maslak
# All Rights Reserved - See License
#

unit module Sys::Domainname:ver<0.0.1>:auth<zef:jmaslak>;

sub domainname(-->Str) is export {
    return S/^ <-[ \. ]>+ \. // with qqx{hostname -f}.chomp;

    CATCH {
        return Str;
    }
}

=begin pod

=head1 NAME

Sys::Domainname - Determine System Domain Name

=head1 SYNOPSIS

  use Sys::Domainname;

  say "My domain name: {domainname}";

=head1 DESCRIPTION

This module uses the C<hostname -f> command (where it works) to determine
the system's domain name.

If a domain name is not present, it returns an empty string.  Should
the C<hostname -f> command fail, it returns a C<Str> type object.

=head1 WARNING

This module currently only works on Linux, OSX, and similar environments
where the domain name is able to be determined with C<hostname -f>.

In particular, this will always return C<Str> on Windows.

=head1 AUTHOR

Joelle Maslak <jmaslak@antelope.net>

=head1 COPYRIGHT AND LICENSE

Copyright © 2020-2022 Joelle Maslak

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

