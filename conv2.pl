#!/usr/bin/env perl

# Set default PerlIO layers using perl pragma open.

use v5.36;
use strict; use warnings;

use open IN => ":encoding(cp932)";
use open OUT => ":encoding(UTF-8)";

open my $in, "<", "text.cp932"
    or die "Can't open file: $!";
open my $out, ">", "text.utf8"
    or  die "Can't open file: $!";

while(<$in>) {
    print $out $_;
}
