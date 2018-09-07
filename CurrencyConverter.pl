#!/usr/bin/env perl

use strict;
use warnings;

my ($local_curr, $foreign_curr, $local_amount, $foreign_amount);

my %rates = (
    USD => 1,
    EUR => 0.86,
    GBP => 0.77,
    INR => 71.86,
    DKK => 6.44,
    AUD => 1.40,
    JPY => 111.08,
    AED => 3.67 
);

# show all supported currencies
print "Welcome, here are our supported currency:\n";
for (keys %rates) {
	print (($_),"\n");
}

# see what currencies the user has and needs
print "Please enter your local currency:\n";
$local_curr = <STDIN>;

chomp ($local_curr);

if (exists $rates{$local_curr}) {
	print "You have entered $local_curr - thank you, this is a currency we accept.\n";
} else {
	die "Unfortunately we don't currently support $local_curr - please come again soon.\n";
}

print "Please enter the currency you need:\n";
$foreign_curr = <STDIN>;

chomp ($foreign_curr);

if (exists $rates{$foreign_curr}) {
	 print "You have entered $foreign_curr - I would be happy to convert $local_curr to $foreign_curr for you.\n";
} else {
	die "I am sorry, we do not support $foreign_curr - please come again soon!\n";
}

print "Please enter how much you would like to exchange:\n";
$local_amount = <STDIN>;

chomp ($local_amount);

print "You have entered $local_amount $local_curr\n";

$foreign_amount = ($rates{$foreign_curr} / $rates{$local_curr}) * $local_amount; # converts the local currency into the foreign currency
print "If you exchange $local_amount $local_curr, you would get $foreign_amount $foreign_curr \n";
