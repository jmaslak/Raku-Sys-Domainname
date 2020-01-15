use v6;
use Test;

#
# Copyright © 2020 Joelle Maslak
# All Rights Reserved - See License
#

use Sys::Domainname;

isa-ok domainname, Str, "Returns a String";
diag domainname;

done-testing;

