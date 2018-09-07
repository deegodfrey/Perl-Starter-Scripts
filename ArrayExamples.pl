#!/usr/bin/env perl

use strict;
use warnings;

# my variables
my @ages = (22, 24, 30, 43);
my @names = ("Denise", "Ben", "Peter", "Phil");
my @months = qw/Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec/;
my @days = qw/Mon Tue Wed Thu Fri Sat Sun/;
my @numbers = (1..100);
my @letters = ('a'..'z');
my @time = qw/Second Minute Hour/;
my @food = qw/Pizza Chips Steak Kebab Chinese/;
my @odd = (1, 3, 5, 7);
my @even = (0, 2, 4, 6);
my @number = (1..100)[0..9];

# escaping the character means the variable is outputted rather than the value of the variable
print "\$ages[0] = $ages[0]\n";
print "\$ages[3] = $ages[3]\n";

# will print the third name and the third age. zero counts as the first column
print "$names[2] = $ages[2]\n";

# prints everything
print "@ages\n";
print "@names\n";

# values start at column 0, this outputs the value that matches the column number in the square brackets
print "$days[0]\n";
print "$days[4]\n";
print "$days[-1]\n";
print "$days[-6]\n";

# prints numbers 1 to 100
print "@numbers\n";

# prints the alphabet
print "@letters\n";

# array functions
print "1. @time\n";

push(@time, "Day");
print "2. @time\n";

unshift(@time, "Millisecond");
print "3. @time\n";

pop(@time);
print "4. @time\n";

shift(@time);
print "5. @time\n";

# another function, will change the next 10 numbers after 5 with 1 - 12
print "Before - @numbers\n";
splice(@numbers, 5, 10, 2..12);
print "After - @numbers\n";

# another function to order my values
print "Before: @food\n";
my @sorted_food = sort(@food);
print "After: @sorted_food\n";

# make an array from an array
my @weekdays = @days[0..4];
print "@weekdays\n";

# merge arrays
my @num = sort(@odd, @even);
print "my @num\n";

# output certain values
print "one to ten: @number\n";

# get the size of my variables
my $time_size = @time;
print "the time variable has $time_size values\n";
my $numbers_size = @numbers;
print "the numbers variable has $numbers_size values\n";
my $food_size = @food;
print "the food variable has $food_size values\n";
my $days_size =  @days;
print "a week has $days_size days\n";

# current date and time
my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$idst) = localtime();
print "Current date and time: $days[$wday] $mday $months[$mon] $hour:$min\n";
print "Current date and time (without using my variables): $mday/$mon\n";

my $date = localtime();
print "Pull all time context: my $date\n";

# making a string from an array, this makes a comma seperated string of the values in my array
my $string = join ':', @names;
print "$string\n";
