#!/usr/bin/perl

use strict;
use warnings;


print "Please enter a word and I will tell you if it is a palindrome or not.\n";
my $word = <STDIN>;
chomp($word);

my $lower_word = lc $word;

my $reverse = reverse($lower_word);

if ($lower_word eq $reverse) {
    print "You have entered $lower_word, the reverse of this is $reverse - YAY this is a palindrome!\n";
} else {
    print "You have entered $lower_word, the reverse of this is $reverse - sorry this is not a palindrome!\n";
}
