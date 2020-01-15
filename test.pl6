#!/usr/bin/env perl6
use v6;

#
# Copyright © 2020 Joelle Maslak
# All Rights Reserved - See License
#

use NativeCall;

my $MAX = 255;
my $buf = buf8.new( 0 xx (2⁸) );

sub getdomainname(buf8 is rw, int32 -->int32) is native {*}

my $len = getdomainname($buf, $MAX);
say $buf.decode('UTF-8');
say $len;
