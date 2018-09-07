#!/usr/bin/env perl

use strict;
use warnings;

my @numbers = (1..100);

for (@numbers) {
    if ($_ % 3 == 0 and $_ % 7 == 0) {
         print "FizzBuzz\n";
    } elsif ($_ % 3 == 0) {
         print "Fizz\n";
    } elsif ($_ % 7 == 0) {
         print "Buzz\n";
    } else {
         print "$_ \n";
    }
}
