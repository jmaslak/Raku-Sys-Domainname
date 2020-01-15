[![Build Status](https://travis-ci.org/jmaslak/Raku-Sys-Domainname.svg?branch=master)](https://travis-ci.org/jmaslak/Raku-Sys-Domainname)

NAME
====

Sys::Domainname - Determine System Domain Name

SYNOPSIS
========

    use Sys::Domainname;

    say "My domain name: {domainname}";

DESCRIPTION
===========

This module uses the `hostname -f` command (where it works) to determine the system's domain name.

If a domain name is not present, it returns an empty string. Should the `hostname -f` command fail, it returns a `Str` type object.

WARNING
=======

This module currently only works on Linux, OSX, and similar environments where the domain name is able to be determined with `hostname -f`.

In particular, this will always return `Str` on Windows.

AUTHOR
======

Joelle Maslak <jmaslak@antelope.net>

COPYRIGHT AND LICENSE
=====================

Copyright © 2020 Joelle Maslak

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

