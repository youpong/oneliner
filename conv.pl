#!/usr/bin/env perl

use v5.36;
use strict; use warnings;

# binmode STDOUT, ":encoding(UTF-8)";

open my $in, "<:encoding(cp932)", "text.cp932"
    or die "Can't open file: $!";
open my $out, ">:encoding(UTF-8)", "text.utf8"
    or  die "Can't open file: $!";

while(<$in>) {
    print $out $_;
}
