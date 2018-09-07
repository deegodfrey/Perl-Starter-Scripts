#!/usr/bin/env perl

use strict;
use warnings;

# my variables
my %data = ('Denise', 22, 'Beckie', 25, 'nial', 25);
my %family = ('Denise' => 22, 'Ben' => 26);

# Output ages
print "\$data{'Denise'} = $data{'Denise'}\n";
print "\$data{'Beckie'} = $data{'Beckie'}\n";
print "\$data{'nial'} = $data{'nial'}\n";

# Extract keys
my @names = keys %data;
print "@names\n";

# Extract values
my @ages = values %data;
print "@ages\n";

# Adding and removing
my @keys = keys %family;
my $size = @keys;
print "I have a family of $size\n";

$family{'Misa'} = 4;
@keys = keys %family;
$size = @keys;
print "Misa came along and we now have $size people in our family\n";

delete $family{'Misa'};
@keys = keys %family;
$size = @keys;
print "On the weekends there are only $size people in the house\n";

# creating an array to store my desired keys and using that to find my value for the corresponding key
my %car_catalog = ("BMW Series 5" => 10000, "Mercedes 2000" => 250000, "Toyota Corolla" => 20000, "Lexus 3" => 95000);
my @my_wishlist = ("BMW Series 5", "Mercedes 2000");

print "I would like to buy one $my_wishlist[0] for the price of $car_catalog{$my_wishlist[0]} Dollars.\n";
print "I would like to buy one $my_wishlist[1] for the price of $car_catalog{$my_wishlist[1]} Dollars.\n";
