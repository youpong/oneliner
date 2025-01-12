#!/usr/bin/env perl

# Set default PerlIO layers using perl pragma open.

use v5.36;
use strict; use warnings;

use open IN => ":encoding(cp932)";
#         OUT => ":encoding(UTF-8)";

binmode STDOUT, ':encoding(UTF-8)';

#$^I = "~";
while(<ARGV>) {
    print ;
}
